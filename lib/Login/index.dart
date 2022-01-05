import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'styles.dart';
import 'package:tts_flutter/LoginAnimation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/animation.dart';
import 'dart:async';
import '../../Components/Form.dart';
import '../../Components/SignInButton.dart';
import '../../Components/WhiteTick.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:tts_flutter/Checkbox.dart';
import 'package:tts_flutter/PraviteP.dart';
import 'package:tts_flutter/UserP.dart';


CBox checkbox = CBox();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);
  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  AnimationController _loginButtonController;
  var animationStatus = 0;

  @override
  void initState() {
    super.initState();
    _loginButtonController = new AnimationController(
        duration: new Duration(milliseconds: 3000), vsync: this);
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      await _loginButtonController.forward();
      await _loginButtonController.reverse();
    } on TickerCanceled {}
  }

  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) {
        return new AlertDialog(
          title: new Text('是否退出应用 ?'),
          actions: <Widget>[
            new TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text('取消'),
            ),
            new TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, "/home"),
              child: new Text('退出'),
            ),
          ],
        );
      },
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 0.4;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return (new WillPopScope(
        onWillPop: _onWillPop,
        child: new Scaffold(
          body: new Container(
              // alignment: Alignment.center,
              decoration: new BoxDecoration(
                image: backgroundImage,
              ),
              child: new Container(
                  decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: <Color>[
                          const Color.fromRGBO(207, 207, 239, 0.8),
                          const Color.fromRGBO(60, 149, 170, 0.9019607843137255),
                        ],
                        stops: [0.2, 1.0],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                      )),
                  child: new ListView(
                    // padding: const EdgeInsets.all(10.0),
                    children: <Widget>[
                           new Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: <Widget>[
                               Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  new Tick(image: tick),
                                  new FormContainer(),
                                  new SignUp()
                                ],),
                                animationStatus == 0 ? new Padding(
                                  padding: const EdgeInsets.only(bottom: 50.0),
                                  child: new InkWell(
                                    onTap: () {
                                      setState(() {
                                        checkbox.check == 1 ? animationStatus = 1
                                            // : animationStatus = 0;
                                            :  showworning();
                                        print(checkbox.check);
                                      });
                                      _playAnimation();
                                    },
                                    child: new SignIn()),)
                                    : new StaggerAnimation(
                                  buttonController:
                                  _loginButtonController.view),
                            ],
                          )
                    ],)
          )),
        )
    ));
  }

  showworning() {
    //设置按钮
    Widget okButton = FlatButton(
      child: Text("OK",style: TextStyle(fontWeight: FontWeight.bold),),
      onPressed: () {Navigator.of(context).pop();},
    );

    //设置对话框
    AlertDialog alert = AlertDialog(
      title: Text("请阅读服务协议和隐私政策并选择已阅读！",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      actions: [
        okButton,
      ],
    );

    //显示对话框
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}



class SignUp extends StatefulWidget {
  SignUp();
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return (new Padding(
      padding: const EdgeInsets.only(
        top: 160.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Radio(value: 1,
            groupValue: checkbox.check,
            activeColor: Colors.black,
            onChanged: (value) {
              setState(() {
                checkbox.check = value;

              });
            },
          ),
          new Text("您已阅读 ",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: new TextStyle(
                fontWeight: FontWeight.w300,
                letterSpacing: 0.5,
                color: Colors.white,
                fontSize: 10.0),
          ),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new UserP()),
            );
          },
            child: Text('《I Wish 用户服务协议》',style: TextStyle(fontSize: 10,color: Colors.redAccent),),
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.greenAccent),
                minimumSize: MaterialStateProperty.all(Size(10, 10))
            ),
            autofocus: true,
          ),
          TextButton(onPressed: (){
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new PrivateP()),
            );
          },
            child: Text('《隐私政策》',style: TextStyle(fontSize: 10,color: Colors.redAccent),),
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.greenAccent),
                minimumSize: MaterialStateProperty.all(Size(10, 10))
            ),
            autofocus: true,
          )
        ],
      ),
    ));
  }
}
