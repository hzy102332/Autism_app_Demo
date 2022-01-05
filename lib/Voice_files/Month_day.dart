import 'package:flutter/material.dart';
import 'Voice_info.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Month extends StatefulWidget {
  const Month({Key key}) : super(key: key);

  @override
  _MonthState createState() => _MonthState();
}


class _MonthState extends State<Month> {


  buildrow(int index, int index2){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 150, height: 150, child: FlatButton(child:
        Image(image: AssetImage('${month[index][0]}'),fit:  BoxFit.fill,),
          onPressed: (){
            setState(() {
              _newVoiceText = '${month[index][1]}';
              _speak();});},),),
        Container(width: 150, height: 150, child: FlatButton(child:
        Image(image: AssetImage('${month[index2][0]}'),fit:  BoxFit.fill,),
          onPressed: (){
            setState(() {
              _newVoiceText = '${month[index2][1]}';
              _speak();});},),),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("月份"),centerTitle: true,),
        body: ListView(
          children: [
            buildrow(0,1),
            buildrow(2,3),
            buildrow(4,5),
            buildrow(6,7),
            buildrow(8,9),
            buildrow(10,11),
          ],
        ),
    );}

  FlutterTts flutterTts;
  dynamic languages;
  bool isCurrentLanguageInstalled = false;
  String _newVoiceText;

  initState() {
    super.initState();
    initTts();
  }

  initTts() {
    flutterTts = FlutterTts();
    _getLanguages();
    _getEngines();
  }

  Future _speak() async {
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(0.8);
    await flutterTts.setPitch(1.0);

    if (_newVoiceText != null) {
      if (_newVoiceText.isNotEmpty) {
        await flutterTts.awaitSpeakCompletion(true);
        await flutterTts.speak(_newVoiceText);
      }}}

  Future _getLanguages() async {
    languages = await flutterTts.getLanguages;
    if (languages != null) setState(() => languages);
  }

  Future _getEngines() async {
    var engines = await flutterTts.getEngines;
    if (engines != null) {
      for (dynamic engine in engines) {
        print(engine);
      }}}

}
