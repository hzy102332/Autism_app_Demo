import 'package:flutter/material.dart';
import 'package:tts_flutter/Pintu.dart';

class Practice extends StatefulWidget {
  @override
  PracticeState createState() => PracticeState();
}

class PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        // appBar: new AppBar(
        //   title: new Text('练习'),
        //   backgroundColor: Colors.greenAccent,
        //   centerTitle: true,
        // ),
        body: Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
          image: new DecorationImage(
          fit: BoxFit.cover,
          image: new AssetImage('images/beijing.jpeg'),),),
          child: Pintu(),
        ),
      ),
      debugShowMaterialGrid: false,
    );
  }
}