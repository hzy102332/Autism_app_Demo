import 'dart:math';
import 'package:collection/equality.dart';
import 'package:flutter/material.dart';
import 'package:tts_flutter/Practice.dart';
import 'package:tts_flutter/Jason.dart';
import 'Checkbox.dart';
import 'My.dart';
import 'Checkbox.dart';


class Pintu extends StatefulWidget {
  @override
  State<Pintu> createState() => _PintuState();
}

Ch val = Ch();
class _PintuState extends State<Pintu> {


  Function eq = const ListEquality().equals;
  int mnum = val.mnum;
  double kuan = 100, gao = 100;

  // var val.index = new Random().nextInt(4);
  // int val.index = 0;

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(child: Text('我的奖牌数🥇：$mnum', style: TextStyle(fontSize: 15),)),
          SizedBox(height: 10,),
//图片第一行
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // RaisedButton(onPressed: change('images/wo.jpeg')),
              Container(width: kuan, height: gao, child: FlatButton(child:
              Image(image: AssetImage('${map[val.index][0]}'),fit:  BoxFit.fill,),
                onPressed: (){
                    setState(() {
                      print(val.index);
                      count++;
                      name = '${map[val.index][0]}';
                      list.add(name);
                      // print(list);
                      // print(check);
                      // print(eq(list,check));
                    });
                    }),),
              Container(width: kuan, height: gao, child: FlatButton(child:
              Image(image: AssetImage('${map[val.index][1]}'),fit:  BoxFit.fill,),
                onPressed: (){
                setState(() {
                  count++;
                  name = '${map[val.index][1]}';
                  list.add(name);
                });},),),
              Container(width: kuan, height: gao, child: FlatButton(child:
              Image(image: AssetImage('${map[val.index][2]}'),fit:  BoxFit.fill,),
                onPressed: (){
                  setState(() {
                    count++;
                    name = '${map[val.index][2]}';
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
                child: Image(image: AssetImage('${map[val.index][3]}'),fit: BoxFit.fill,),
                onPressed: (){
                  setState(() {
                    count++;
                    name = '${map[val.index][3]}';
                    list.add(name);
                  });},),),
              Container(width: kuan, height: gao, child: FlatButton(
                child: Image(image: AssetImage('${map[val.index][4]}'),fit:  BoxFit.fill,),
                onPressed: (){setState(() {
                  count++;
                  name = '${map[val.index][4]}';
                  list.add(name);
                });},),),
              Container(width: kuan, height: gao, child: FlatButton(
                child: Image(image: AssetImage('${map[val.index][5]}'),fit:  BoxFit.fill,),
                onPressed: (){setState(() {
                  count++;
                  name = '${map[val.index][5]}';
                  list.add(name);
                });},),),
            ],),
          SizedBox(height: 5,),
          Center(child: Text('${map[val.index][6]}',style: TextStyle(fontSize: 20),),),
          ButtonBar(buttonMinWidth: 40,buttonHeight: 40,
            buttonPadding: EdgeInsets.symmetric(horizontal: 5),
            alignment: MainAxisAlignment.spaceAround,
            children: [
// 向左
//               RaisedButton(
//                   child: Icon(Icons.keyboard_arrow_left_rounded,color: Colors.white,),
//                   color: Colors.orange,
//                   onPressed: (){}),
//刷新
              RaisedButton(
                color: Colors.orange,
                  child: Icon(Icons.refresh_outlined,color: Colors.white,),
                  onPressed: refresh),
              // RaisedButton(
              //   color: Colors.orange,
              //     child: Icon(Icons.star_border_rounded,color: Colors.white,),
              //     onPressed: (){}),
//向右
              RaisedButton(
                color: Colors.orange,
                  child: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.white,),
                  onPressed: (){
                    var check = map[val.index][7];
                     setState(() {
                      eq(list,check) ? val.mnum = mnum + 50
                          : val.mnum = mnum - 10;
                            // print(check);
                            // print(val.index++);print(map.length);

                      eq(list,check) ? (val.index < map.length-1 ? val.index++ : val.index = 0) : null;
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Practice()),);});



                  }),
            ],
          ),
          SizedBox(height: 10,),
//空白第一行
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              height: gao,width: kuan,
              child: InkWell(child: list.length >= 1 ? Image(image: AssetImage(list[0]),fit:  BoxFit.fill,)
                  : Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),),
              Container(
                height: gao,width: kuan,
                child: InkWell(child: list.length >= 2 ? Image(image: AssetImage(list[1]),fit:  BoxFit.fill,)
                    : Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),),
              Container(
                height: gao,width: kuan,
                child: InkWell(child: list.length >= 3 ? Image(image: AssetImage(list[2]),fit:  BoxFit.fill,)
                    : Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),),
          ],),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: gao,width: kuan,
                child: InkWell(child: list.length >= 4 ? Image(image: AssetImage(list[3]),fit:  BoxFit.fill,)
                    : Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),),
              Container(
                height: gao,width: kuan,
                child: InkWell(child: list.length >= 5 ? Image(image: AssetImage(list[4]),fit:  BoxFit.fill,)
                    : Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),),
              Container(
                height: gao,width: kuan,
                child: InkWell(child: list.length >= 6 ? Image(image: AssetImage(list[5]),fit:  BoxFit.fill,)
                    : Image(image: AssetImage('images/baise.jpeg'),fit:  BoxFit.fill,)),),

            ],),
        ],
      ),
    );
  }
}
