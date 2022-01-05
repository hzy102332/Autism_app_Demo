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
import 'package:tts_flutter/Record_Voice/Read.dart';
import 'package:tts_flutter/Record_Voice/Story.dart';
import 'Outdoor.dart';

class KanTu extends StatefulWidget {
  const KanTu({Key key}) : super(key: key);

  @override
  _KanTuState createState() => _KanTuState();
}

class _KanTuState extends State<KanTu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("看图说话"),centerTitle: true,),
      body: ListView(
        children: [
          Column(children: [
            IconButton(iconSize: 100, icon: Icon(Icons.chrome_reader_mode_outlined), color: Colors.orange[600],
              highlightColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Read()),);
              },),
            Text('跟我读',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.orange),)],),

          Column(children: [
            IconButton(iconSize: 100, icon: Icon(Icons.inventory_2_outlined), color: Colors.blue[600],
              highlightColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new RecordPage()),);
              },),
            Text('物品',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),)],),

          Column(children: [
            IconButton(iconSize: 100, icon: Icon(Icons.history_edu_rounded), color: Colors.black87,
              highlightColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Story()),);
              },),
            Text('小故事',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87),)],),


        ],
      ),
    );
  }
}
