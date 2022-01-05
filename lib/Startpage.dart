import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'package:tts_flutter/Loginpage.dart';

class Startpage extends StatefulWidget {
  @override
  _StartpageState createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(child: Image(image: new AssetImage('images/stating.png'))),
    );
  }

  void initState() {
    super.initState();
    var _duration = Duration(seconds: 3);
    Future.delayed(_duration, newPage);
  }

  void newPage() {
    new Routes();
  }
}
