import 'dart:math';
import 'package:collection/equality.dart';
import 'package:flutter/material.dart';
import 'package:tts_flutter/Practice.dart';
import 'package:tts_flutter/Jason.dart';
import 'Checkbox.dart';
import 'My.dart';
import 'Checkbox.dart';


class Pintu2 extends StatefulWidget {
  @override
  State<Pintu2> createState() => _Pintu2State();
}

Ch val = Ch();
class _Pintu2State extends State<Pintu2> {


  Function eq = const ListEquality().equals;
  double kuan = 100, gao = 100;

  var index = new Random().nextInt(4);

  String name = '';
  int count = 0;

  var list = new List();
  var number = v.value2;

  var map = v.value2 == 1 ? map1 : v.value2 == 2 ? map2 : v.value2==3? map3 : map3;

  void refresh (){
    setState(() {
      count = 0;
      list.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('拼图成句'),centerTitle: true,),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            fit: BoxFit.cover,
            image: new AssetImage('images/beijing2.jpeg'),),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
//图片第一行
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // RaisedButton(onPressed: change('images/wo.jpeg')),
                Container(width: kuan, height: gao, child: FlatButton(child:
                Image(image: AssetImage('${map[index][0]}'),fit:  BoxFit.fill,),
                    onPressed: (){
                      setState(() {
                        print(index);
                        count++;
                        name = '${map[index][0]}';
                        list.add(name);
                      });
                    }),),
                Container(width: kuan, height: gao, child: FlatButton(child:
                Image(image: AssetImage('${map[index][1]}'),fit:  BoxFit.fill,),
                  onPressed: (){
                    setState(() {
                      count++;
                      name = '${map[index][1]}';
                      list.add(name);
                    });},),),
                Container(width: kuan, height: gao, child: FlatButton(child:
                Image(image: AssetImage('${map[index][2]}'),fit:  BoxFit.fill,),
                  onPressed: (){
                    setState(() {
                      count++;
                      name = '${map[index][2]}';
                      list.add(name);
                    });
                  },),),
              ],),
            // SizedBox(height: 10,),
//图片第二行
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: kuan, height: gao, child: FlatButton(
                  child: Image(image: AssetImage('${map[index][3]}'),fit: BoxFit.fill,),
                  onPressed: (){
                    setState(() {
                      count++;
                      name = '${map[index][3]}';
                      list.add(name);
                    });},),),
                Container(width: kuan, height: gao, child: FlatButton(
                  child: Image(image: AssetImage('${map[index][4]}'),fit:  BoxFit.fill,),
                  onPressed: (){setState(() {
                    count++;
                    name = '${map[index][4]}';
                    list.add(name);
                  });},),),
                Container(width: kuan, height: gao, child: FlatButton(
                  child: Image(image: AssetImage('${map[index][5]}'),fit:  BoxFit.fill,),
                  onPressed: (){setState(() {
                    count++;
                    name = '${map[index][5]}';
                    list.add(name);
                  });},),),
              ],),
            SizedBox(height: 5,),
            Center(child: Text('${map[index][6]}',style: TextStyle(fontSize: 20,color: Colors.white),),),
            ButtonBar(buttonMinWidth: 40,buttonHeight: 40,
              buttonPadding: EdgeInsets.symmetric(horizontal: 5),
              alignment: MainAxisAlignment.spaceAround,
              children: [
//刷新
                RaisedButton(
                    color: Colors.orange,
                    child: Icon(Icons.refresh_outlined,color: Colors.white,),
                    onPressed: refresh),
//向右
                RaisedButton(
                    color: Colors.orange,
                    child: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.white,),
                    onPressed: (){
                      setState(() {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pintu2()),
                        );
                      });
                    }),
              ],
            ),
            SizedBox(height: 50,),
//空白第一行
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: gao,width: kuan,
                  child: InkWell(child: list.length >= 1 ? Image(image: AssetImage(list[0]),fit:  BoxFit.fill,)
                      : null)),
                Container(
                  height: gao,width: kuan,
                  child: InkWell(child: list.length >= 2 ? Image(image: AssetImage(list[1]),fit:  BoxFit.fill,)
                      : null)),
                Container(
                  height: gao,width: kuan,
                  child: InkWell(child: list.length >= 3 ? Image(image: AssetImage(list[2]),fit:  BoxFit.fill,)
                      : null
                  // Opacity(opacity: 0.3, child: Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),
                  )),
              ],),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: gao,width: kuan,
                  child: InkWell(child: list.length >= 4 ? Image(image: AssetImage(list[3]),fit:  BoxFit.fill,)
                      : null)),
                Container(
                  height: gao,width: kuan,
                  child: InkWell(child: list.length >= 5 ? Image(image: AssetImage(list[4]),fit:  BoxFit.fill,)
                      : null)),
                Container(
                  height: gao,width: kuan,
                  child: InkWell(child: list.length >= 6 ? Image(image: AssetImage(list[5]),fit:  BoxFit.fill,)
                      : null)),

              ],),
          ],
        ),
      ),
    );
  }
}
