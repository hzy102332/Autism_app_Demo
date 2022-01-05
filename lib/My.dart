import 'dart:math';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tts_flutter/Exchange.dart';
import 'package:tts_flutter/Mofang.dart';
// import 'package:flutter/painting.dart';
import 'Checkbox.dart';

class My extends StatefulWidget {
  @override
  MyState createState() => MyState();
  static BuildContext appContext;

}

Ch v = Ch();

class MyState extends State<My> {

  bool ps = false;
  var _count = 0;
  var rand = new Random();
  var first, second, third,result, temp;
  String line;

  // 自增操作
  increase(int number) {
    setState(() {
      _count = _count * 10 + number;
    });
  }

  void initState() {
    super.initState();
    My.appContext = context;
  }

  @override
  Widget build(BuildContext context) {

    first = rand.nextInt(10); second = rand.nextInt(10); third = rand.nextInt(10);
    // result = first * second + third;
    // line= '$first X $second + $third =';

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('账号信息'),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          actions: [
            IconButton(
                icon: new Icon(Icons.miscellaneous_services_outlined),
                color: Colors.black,
                onPressed: _showStateDialog),
          ],
        ),

        body: new Column(
          children: [

            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 70, height: 70,
                        child: Image.asset('images/account.png'),
                      ),
                      SizedBox(width: 20,),
                      Text('XXXXXX',style: TextStyle(fontSize: 20),),
                      // MaterialButton(
                      //     onPressed: (){},
                      //     child: Text('点击登录',
                      //     style: TextStyle(
                      //       fontSize: 15,
                      //       color: Color(0xFFFDFDFD),
                      //     ),),
                      //   color: Color(0xFFFF9800),
                      //   shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      // ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("阶段选择", style: TextStyle(fontSize: 15,color: Colors.black, height: 1.2,),),
                  SizedBox(height: 5,),
                  Container(
                    color: Color(0x6626F4FC),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: DropdownButton(
                          value: v.value1,
                        // style: style,
                        hint: Text('请选择孩子的教学阶段                        '),
                        items: [
                          DropdownMenuItem(child: Text('阶段 I'),value: 1,),
                          DropdownMenuItem(child: Text('阶段 II'),value: 2,),
                          DropdownMenuItem(child: Text('阶段 III'),value: 3,),
                          DropdownMenuItem(child: Text('阶段 IV'),value: 4,)
                        ],
                        onChanged: (value){
                            setState(() {
                              ps ? v.value1 = value : v.value1 = v.value1;
                              // print(v.value1);
                            });},
                        icon: Icon(Icons.arrow_drop_down_rounded),
                        iconSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("主题选择", style: TextStyle(fontSize: 15,color: Colors.black, height: 1.2,),),
                  SizedBox(height: 5,),
                  Container(
                    color: Color(0x66A145F8),
                    child: SizedBox(
                      width: 50,
                      height: 40,
                      child: DropdownButton(
                        value: v.value2,
                        // style: style,
                        hint: Text('请选择孩子喜欢的主题                        '),
                        items: [
                          DropdownMenuItem(child: Text('小猪佩奇'),value: 1,),
                          DropdownMenuItem(child: Text('哆啦A梦'),value: 2,),
                          DropdownMenuItem(child: Text('普通'),value: 3,),
                          DropdownMenuItem(child: Text('天线宝宝'),value: 4,),
                          DropdownMenuItem(child: Text('冰雪奇缘'),value: 5,),
                        ],
                        onChanged:(value){
                          setState(() {
                            ps ?v.value2 = value : v.value2 = v.value2;
                            print(v.value2);
                          });
                        },
                        icon: Icon(Icons.arrow_drop_down_rounded),
                        iconSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
//图片上传
//                   MaterialButton(
//                     color: Color(0xccffab40),
//                     onPressed: (){
//                       Navigator.push(context,
//                         new MaterialPageRoute(builder: (context) => Mofang()),);
//                     }, child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("🔁 图片更新",style: TextStyle(fontSize: 15, color: Colors.white, height: 1.2,),),
//                         Icon(Icons.arrow_right_rounded)
//                       ],),),
//                   SizedBox(height: 10,),
//奖章
                  MaterialButton(
                    color: Color(0xccffab40),
                    onPressed: (){
                      Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => Exchange()),);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("🥇 奖章兑换",style: TextStyle(fontSize: 15, color: Colors.white, height: 1.2,),),
                        Icon(Icons.arrow_right_rounded)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
//关于
                  MaterialButton(
                    color: Color(0xb3ffab40),
                    onPressed: showus,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("😉 关于我们",style: TextStyle(fontSize: 15, color: Colors.white, height: 1.2,),),
                        Icon(Icons.arrow_right_rounded)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showus() {
    //显示对话框
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("关于爱为师(I Wish)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          content: Container(height:200,child: Column(
            children: [
              Container(width: 90, height: 70, child: Image.asset('images/appicon.jpeg'),),
              SizedBox(height: 10,),
              Text("Autism App 1.0.0",style: TextStyle(fontSize: 10),),
              SizedBox(height: 10),
              Text("联系方式：1234567@wku.edu",style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Text("电话咨询：12345678910         ",style: TextStyle(fontSize: 15),),
            ],
          )),
          actions: [
            FlatButton(
              onPressed: () {Navigator.of(context).pop();},
              child: Text('确定'), color: Colors.white,)
          ],
        );;
      },
    );
  }

  _showStateDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        // barrierColor: Colors.grey,
        builder: (context) => StatefulBuilder(
            builder: (context, dialogStateState) => SimpleDialog(
              backgroundColor: Color(0x97F6CB8C),
              title: Container(alignment: Alignment.center,
                  child: Text('进入设置，进行验证',style: TextStyle(fontSize: 15),)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('4 X 9 + 15 = ', style: TextStyle(fontSize: 20.0)),
                        Container(
                            width: 80,
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                                border: new Border.all(color: Colors.orange, width: 2),
                                color: Colors.white,
                                borderRadius: new BorderRadius.circular((20.0))),
                            child: Text('$_count',style: TextStyle(fontSize: 15),))
                      ],
                    )
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  buttonHeight: 40,
                  buttonMinWidth: 40,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 5),
                  children: [
                    RaisedButton(onPressed: () => dialogStateState(() => increase(1)),
                      child: Text('1',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(2)),
                      child: Text('2',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(3)),
                      child: Text('3',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(4)),
                      child: Text('4',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(5)),
                      child: Text('5',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                ],),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  buttonHeight: 40,
                  buttonMinWidth: 40,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 5),
                  children: [
                    RaisedButton(onPressed: () => dialogStateState(() => increase(6)),
                      child: Text('6',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(7)),
                      child: Text('7',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(8)),
                      child: Text('8',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(9)),
                      child: Text('9',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                    RaisedButton(onPressed: () => dialogStateState(() => increase(0)),
                      child: Text('0',style: TextStyle(fontSize: 20, color: Colors.white),),color: Colors.orange, shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),),
                  ],),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                    RaisedButton(
                      // onPressed: () => dialogStateState(() => panduan()),
                      onPressed: (){
                        if (_count == 51){
                          ps = true;
                          print(ps);
                          Navigator.of(context).pop();
                        }else {
                          print(ps);
                          _count = 0;
                        }
                      },
                      child: Text('点我验证'),
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    ),
                    RaisedButton(
                      onPressed: () {
                        _count = 0;
                        Navigator.of(context).pop();
                      },
                      child: Text('点我关闭'),
                      color: Colors.white,
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                    )
                  ]),
                )
              ],
            )));
  }

  panduan(){
    if (_count == 51){
      ps = true;
      // print(ps);
      Navigator.of(context).pop();
    }else {
      _count = 0;
    }
  }
}

