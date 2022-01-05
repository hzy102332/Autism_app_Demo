import 'package:flutter/material.dart';
import 'package:tts_flutter/Pintu.dart';

class Practice_null extends StatefulWidget {
  @override
  Practice_nullState createState() => Practice_nullState();
}

class Practice_nullState extends State<Practice_null> {
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
          child: Text('请先选择阶段二  ！！！',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.redAccent),),
        ),
      ),
      debugShowMaterialGrid: false,
    );
  }
}