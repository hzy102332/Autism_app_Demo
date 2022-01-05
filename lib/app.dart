import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:tts_flutter/Favorite.dart';
import 'package:tts_flutter/My.dart';
import 'package:tts_flutter/Practice.dart';
import 'package:tts_flutter/Practice_null.dart';
import 'package:tts_flutter/Tech.dart';
import 'My.dart';

class FirstPage extends StatefulWidget {
  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin {
  TabController controller;
  // static const IconData assignment_turned_in_rounded = IconData(0xf588, fontFamily: 'MaterialIcons');

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new Teach(),
              new Practice(),
              // new Favorite(),
              new My(),
            ],
          ),
          bottomNavigationBar: new Material(
            color: Colors.white10,
            child: new TabBar(
              controller: controller,
                labelColor: Colors.orange,
                tabs: <Widget>[
                  new Tab(text: "教学", icon: new Icon(Icons.group_sharp),),
                  new Tab(text: "练习", icon: new Icon(Icons.assignment_turned_in_rounded),),
                  // new Tab(
                  //   text: "收藏",
                  //   icon: new Icon(Icons.star),
                  // ),
                  new Tab(text: "我的", icon: new Icon(Icons.account_circle_rounded),)
                ]),
          ),
        )
    );
  }
}