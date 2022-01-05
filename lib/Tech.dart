import 'package:flutter/material.dart';
import 'package:tts_flutter/P2.dart';
import 'package:tts_flutter/Record_Voice/KanTu.dart';
import 'package:tts_flutter/Voice_files/Voice.dart';
import 'Mofang.dart';
import 'My.dart';

class Teach extends StatefulWidget {
  @override
  TeachState createState() => TeachState();
}

class TeachState extends State<Teach> {

  showinfo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("请选择对应的阶段！",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          actions: [
            FlatButton(
              onPressed: () {Navigator.of(context).pop();},
              child: Text('确定',style: TextStyle(fontWeight: FontWeight.bold),), color: Colors.white,)
          ],
        );;},);}

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        // appBar: new AppBar(
        //   title: new Text('教学'),
        //   backgroundColor: Colors.blue,
        //   centerTitle: true,
        // ),
        body: Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: new AssetImage('images/xinkong.jpg'),
          ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ButtonBar(
                  //   children: [
                      RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                            child: Text("知识\n图片",
                            style: TextStyle(fontSize: 40, color: Colors.white, height: 1.2,),),),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                          color: const Color(0x667C4DFF),

                          onPressed: (){
                            v.value1 != null ?
                            Navigator.push(context,
                              new MaterialPageRoute(builder: (context) => new Mofang()),) : showinfo();}
                            ),
                      RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                            child: Text("拼图\n成句",
                              style: TextStyle(fontSize: 40, color: Colors.white, height: 1.2,),),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          color: Color(0x6669F0AE),
                          onPressed: (){
                            v.value1 == null ? showinfo() : v.value1 >= 2 ?
                            Navigator.push(context,
                              new MaterialPageRoute(builder: (context) => new Pintu2()),) : showinfo();
                          }),
                    // ],)
            ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // ButtonBar(
                  //   children: [
                      RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                            child: Text("语音\n解释",
                              style: TextStyle(fontSize: 40, color: Colors.white, height: 1.2,),),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                          color: Color(0x6640C4FF),
                          onPressed: (){
                            v.value1 == null ? showinfo() : v.value1 >= 3 ?
                            Navigator.push(context,
                              new MaterialPageRoute(builder: (context) => new Voice()),) : showinfo();
                          }),
                      RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                            child: Text("看图\n说话",
                              style: TextStyle(fontSize: 40, color: Colors.white, height: 1.2,),),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          color: Color(0x66607D8B),
                          onPressed: (){
                            v.value1 == 4 ?
                            Navigator.push(context,
                              new MaterialPageRoute(builder: (context) => new KanTu()),) : showinfo();
                          }),
                    // ],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





