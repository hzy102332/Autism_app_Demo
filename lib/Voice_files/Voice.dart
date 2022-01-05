import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:tts_flutter/Voice_files/Food.dart';
import 'package:tts_flutter/Voice_files/Month_day.dart';
import 'package:tts_flutter/Voice_files/Object.dart';
import 'Voice_info.dart';


class Voice extends StatefulWidget {
  const Voice({Key key}) : super(key: key);

  @override
  _VoiceState createState() => _VoiceState();
}

class _VoiceState extends State<Voice> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("语音解释"),centerTitle: true,),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                  IconButton(iconSize: 100, icon: Icon(Icons.fastfood_outlined),
                    color: Colors.blue[600],
                    highlightColor: Colors.blue,
                    onPressed: (){
                      Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => new Food()),);
                    },),
                  Text('食物',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),)
                ],),
              Column(children: [
                IconButton(iconSize: 100, icon: Icon(Icons.calendar_today_rounded),
                  color: Colors.red[600],
                  highlightColor: Colors.red,
                  onPressed: (){
                    Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Month()),);
                  },),
                Text('月份',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),)
              ],),
              Column(children: [IconButton(iconSize: 100, icon: Icon(Icons.inventory_2_outlined),
                  color: Colors.yellow[600],
                  highlightColor: Colors.yellow,
                  onPressed: (){
                    Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new Object()),);
                  },),
                Text('物品',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.yellow),)
              ],),
            ],
          ),
          ],
        ),
    );}}


