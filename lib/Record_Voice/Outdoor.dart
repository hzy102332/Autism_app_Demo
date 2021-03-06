/*
 * @Descripttion:
 * @version:
 * @Author: lichuang
 * @Date: 2020-09-07 15:44:44
 * @LastEditors: lichuang
 * @LastEditTime: 2020-09-08 19:07:18
 */
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:intl/date_symbol_data_local.dart';
import 'Record_info.dart';

enum RecordPlayState { record, recording, play, playing, }

class RecordPage extends StatefulWidget {
  RecordPage({Key key}) : super(key: key);

  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  RecordPlayState _state = RecordPlayState.record;

  StreamSubscription _recorderSubscription;
  StreamSubscription _playerSubscription;

  // StreamSubscription _dbPeakSubscription;
  FlutterSoundRecorder flutterSound;
  String _recorderTxt = '00:00:00';
  // String _playerTxt = '00:00:00';

  double _dbLevel = 0.0;
  FlutterSoundRecorder recorderModule = FlutterSoundRecorder();
  FlutterSoundPlayer playerModule = FlutterSoundPlayer();

  var _path = "";
  var _duration = 0.0;
  var _maxLength = 59.0;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> _initializeExample(bool withUI) async {
    await playerModule.closeAudioSession();

    await playerModule.openAudioSession(
        focus: AudioFocus.requestFocusTransient,
        category: SessionCategory.playAndRecord,
        mode: SessionMode.modeDefault,
        device: AudioDevice.speaker);

    await playerModule.setSubscriptionDuration(Duration(milliseconds: 30));
    await recorderModule.setSubscriptionDuration(Duration(milliseconds: 30));
    initializeDateFormatting();
  }

  Future<void> init() async {
    recorderModule.openAudioSession(
        focus: AudioFocus.requestFocusTransient,
        category: SessionCategory.playAndRecord,
        mode: SessionMode.modeDefault,
        device: AudioDevice.speaker);
    await _initializeExample(false);

    if (Platform.isAndroid) {
      // copyAssets();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _cancelRecorderSubscriptions();
    _cancelPlayerSubscriptions();
    _releaseFlauto();
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          centerTitle: true,
          brightness: Brightness.dark,
          title: Text('???????????????????????????', style: TextStyle(color: Colors.white, fontSize: 18),)),
      backgroundColor: Color(0xFF0C141F),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(height: 300,width: 300,
                child: Image(image: AssetImage('${food[index][0]}')),)
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).padding.bottom + 15,
              child: _actionShow())
        ],
      ),
    );
  }

  Widget _timeShow() {
    return Column(children: [
      Container(
          width: double.maxFinite,
          // height: 30,
          alignment: Alignment.center,
          child: Text(_recorderTxt,
              style: TextStyle(fontSize: 20, color: Colors.white))),
      // SizedBox(height: 20),
      // CustomPaint(
      //     size: Size(double.maxFinite, 10),
      //     painter: LCPainter(amplitude: _dbLevel / 2, number: 30 - _dbLevel ~/ 20)),
    ]);
  }
//??????????????????
  Widget _actionShow() {
    var _width = 180;
    var _height = 200.0;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFF1A283B),
        ),
        height: _height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    index > 0 ? setState(() {
                      index --;
                    }): null;}, icon: Icon(Icons.arrow_back_rounded,color: Colors.orange, size: 40,), ),
                  IconButton(onPressed: (){
                    index < food.length-1 ? setState(() {
                      index ++;
                      print(index);
                    }) : null;}, icon: Icon(Icons.arrow_forward_rounded,color: Colors.orange, size: 40,), ),
                ],),
              _timeShow(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Offstage(
                    offstage: _state == RecordPlayState.play ||
                        _state == RecordPlayState.playing ? false : true,
                    child: InkWell(
                        onTap: () {
                          setState(() async {
                            _state = RecordPlayState.record;
                            _path = "";
                            _recorderTxt = "00:00:00";
                            _dbLevel = 0.0;
                            await _stopPlayer();
                            _state = RecordPlayState.record;
                          });
                        },
                        child: Container(
                          width: _width / 3,
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset('images/record.png')
                          ),
                        ))),
                InkWell(
                    onTap: () {
                      if (_state == RecordPlayState.record) {
                        _startRecorder();
                      } else if (_state == RecordPlayState.recording) {
                        _stopRecorder();
                      } else if (_state == RecordPlayState.play) {
                        _startPlayer();
                      } else if (_state == RecordPlayState.playing) {
                        _pauseResumePlayer();
                      }
                    },
                    child: Container(
                      width: _width / 3,
                      padding: EdgeInsets.all(5),
                      child: Container(
                          child: Image.asset(_state == RecordPlayState.record
                              ? "images/record.png"
                              : _state == RecordPlayState.recording
                              ? "images/recording.png"
                              : _state == RecordPlayState.play
                              ? "images/play.png" : "images/playing.png")),
                    )),
                Offstage(
                    offstage: _state == RecordPlayState.play ||
                        _state == RecordPlayState.playing
                        ? false : true,
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: _width / 3,
                          padding: EdgeInsets.all(5),
                          child: Container(
                              child:
                              Image.asset('images/finish.png')),
                        )))
              ]),
              SizedBox(height:3),
//????????????
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Offstage(
                    offstage: _state == RecordPlayState.play ||
                        _state == RecordPlayState.playing
                        ? false
                        : true,
                    child: InkWell(
                        onTap: () {
                          setState(() async {
                            _state = RecordPlayState.record;
                            _path = "";
                            _recorderTxt = "00:00:00";
                            _dbLevel = 0.0;
                            await _stopPlayer();
                            _state = RecordPlayState.record;
                          });
                        },
                        child: Container(
                            width: _width / 3,
                            alignment: Alignment.center,
                            child: Text(
                              "??????",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            )))),
                InkWell(
                    onTap: () {
                      if (_state == RecordPlayState.record) {
                        _startRecorder();
                      } else if (_state == RecordPlayState.recording) {
                        _stopRecorder();
                      } else if (_state == RecordPlayState.play) {
                        _startPlayer();
                      } else if (_state == RecordPlayState.playing) {
                        _pauseResumePlayer();
                      }
                    },
                    child: Container(
                        width: _width / 3,
                        alignment: Alignment.center,
                        child: Text(
                          _state == RecordPlayState.record
                              ? "??????"
                              : _state == RecordPlayState.recording
                              ? "??????"
                              : _state == RecordPlayState.play ? "??????" : "??????",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ))),
                Offstage(
                    offstage: _state == RecordPlayState.play ||
                        _state == RecordPlayState.playing
                        ? false
                        : true,
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: _width / 3,
                            alignment: Alignment.center,
                            child: Text(
                              "??????",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            )))),
              ])
        ]));
  }

  /// ????????????
  _startRecorder() async {
    try {
      await PermissionHandler()
          .requestPermissions([PermissionGroup.microphone]);
      PermissionStatus status = await PermissionHandler()
          .checkPermissionStatus(PermissionGroup.microphone);
      if (status != PermissionStatus.granted) {
        EasyLoading.showToast("???????????????????????????");
        throw RecordingPermissionException("???????????????????????????");
      }
      print('===>  ???????????????');
      Directory tempDir = await getTemporaryDirectory();
      var time = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      String path =
          '${tempDir.path}/${recorderModule.slotNo}-$time${ext[Codec.aacADTS.index]}';
      print('===>  ??????????????????');
      await recorderModule.startRecorder(
        toFile: path,
        codec: Codec.aacADTS,
        bitRate: 8000,
        sampleRate: 8000,
      );
      print('===>  ????????????');

      /// ????????????
      _recorderSubscription = recorderModule.onProgress.listen((e) {
        if (e != null && e.duration != null) {
          DateTime date = new DateTime.fromMillisecondsSinceEpoch(
              e.duration.inMilliseconds,
              isUtc: true);
          String txt = DateFormat('mm:ss:SS', 'en_GB').format(date);
          if (date.second >= _maxLength) {
            _stopRecorder();
          }
          setState(() {
            _recorderTxt = txt.substring(0, 8);
            _dbLevel = e.decibels;
            print("???????????????$_dbLevel");
          });
        }
      });
      this.setState(() {
        _state = RecordPlayState.recording;
        _path = path;
        print("path == $path");
      });
    } catch (err) {
      setState(() {
        _stopRecorder();
        _state = RecordPlayState.record;
        _cancelRecorderSubscriptions();
      });
    }
  }

  /// ????????????
  _stopRecorder() async {
    try {
      await recorderModule.stopRecorder();
      print('stopRecorder');
      _cancelRecorderSubscriptions();
      _getDuration();
    } catch (err) {
      print('stopRecorder error: $err');
    }
    setState(() {
      _dbLevel = 0.0;
      _state = RecordPlayState.play;
    });
  }

  /// ??????????????????
  void _cancelRecorderSubscriptions() {
    if (_recorderSubscription != null) {
      _recorderSubscription.cancel();
      _recorderSubscription = null;
    }
  }

  /// ??????????????????
  void _cancelPlayerSubscriptions() {
    if (_playerSubscription != null) {
      _playerSubscription.cancel();
      _playerSubscription = null;
    }
  }

  /// ?????????????????????
  Future<void> _releaseFlauto() async {
    try {
      await playerModule.closeAudioSession();
      await recorderModule.closeAudioSession();
    } catch (e) {
      print('Released unsuccessful');
      print(e);
    }
  }

  /// ????????????????????????
  Future<void> _getDuration() async {
    Duration d = await flutterSoundHelper.duration(_path);
    _duration = d != null ? d.inMilliseconds / 1000.0 : 0.00;
    print("_duration == $_duration");
    var minutes = d.inMinutes;
    var seconds = d.inSeconds % 60;
    var millSecond = d.inMilliseconds % 1000 ~/ 10;
    _recorderTxt = "";
    if (minutes > 9) {
      _recorderTxt = _recorderTxt + "$minutes";
    } else {
      _recorderTxt = _recorderTxt + "0$minutes";
    }

    if (seconds > 9) {
      _recorderTxt = _recorderTxt + ":$seconds";
    } else {
      _recorderTxt = _recorderTxt + ":0$seconds";
    }
    if (millSecond > 9) {
      _recorderTxt = _recorderTxt + ":$millSecond";
    } else {
      _recorderTxt = _recorderTxt + ":0$millSecond";
    }
    print(_recorderTxt);
    setState(() {});
  }

  /// ????????????
  Future<void> _startPlayer() async {
    try {
      if (await _fileExists(_path)) {
        await playerModule.startPlayer(
            fromURI: _path,
            codec: Codec.aacADTS,
            whenFinished: () {
              print('==> ????????????');
              _stopPlayer();
              setState(() {});
            });
      } else {
        EasyLoading.showToast("?????????????????????");
        throw RecordingPermissionException("?????????????????????");
      }

      _cancelPlayerSubscriptions();
      _playerSubscription = playerModule.onProgress.listen((e) {
        if (e != null) {
          // print("${e.duration} -- ${e.position} -- ${e.duration.inMilliseconds} -- ${e.position.inMilliseconds}");
          // DateTime date = new DateTime.fromMillisecondsSinceEpoch(
          //     e.position.inMilliseconds,
          //     isUtc: true);
          // String txt = DateFormat('mm:ss:SS', 'en_GB').format(date);

          // this.setState(() {
          // this._playerTxt = txt.substring(0, 8);
          // });
        }
      });
      setState(() {
        _state = RecordPlayState.playing;
      });
      print('===> ????????????');
    } catch (err) {
      print('==> ??????: $err');
    }
    setState(() {});
  }

  /// ????????????
  Future<void> _stopPlayer() async {
    try {
      await playerModule.stopPlayer();
      print('===> ????????????');
      _cancelPlayerSubscriptions();
    } catch (err) {
      print('==> ??????: $err');
    }
    setState(() {
      _state = RecordPlayState.play;
    });
  }

  /// ??????/????????????
  void _pauseResumePlayer() {
    if (playerModule.isPlaying) {
      playerModule.pausePlayer();
      _state = RecordPlayState.play;
      print('===> ????????????');
    } else {
      playerModule.resumePlayer();
      _state = RecordPlayState.playing;
      print('===> ????????????');
    }
    setState(() {});
  }

  /// ????????????????????????
  Future<bool> _fileExists(String path) async {
    return await File(path).exists();
  }
}

class LCPainter extends CustomPainter {
  final double amplitude;
  final int number;
  LCPainter({this.amplitude = 100.0, this.number = 20});
  @override
  void paint(Canvas canvas, Size size) {
    var centerY = 0.0;
    var width = 50.0;

    for (var a = 0; a < 4; a++) {
      var path = Path();
      path.moveTo(0.0, centerY);
      var i = 0;
      while (i < number) {
        path.cubicTo(width * i, centerY, width * (i + 1),
            centerY + amplitude - a * (30), width * (i + 2), centerY);
        path.cubicTo(width * (i + 2), centerY, width * (i + 3),
            centerY - amplitude + a * (30), width * (i + 4), centerY);
        i = i + 4;
      }
      canvas.drawPath(
          path,
          Paint()
            ..color = a == 0 ? Colors.blueAccent : Colors.blueGrey.withAlpha(50)
            ..strokeWidth = a == 0 ? 3.0 : 2.0
            ..maskFilter = MaskFilter.blur(
              BlurStyle.solid,
              5,
            )
            ..style = PaintingStyle.stroke);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
