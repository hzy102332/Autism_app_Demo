import 'package:flutter/material.dart';
import 'package:tts_flutter/Checkbox.dart';
import 'Pintu.dart';


class Exchange extends StatefulWidget {
  const Exchange({Key key}) : super(key: key);

  @override
  _ExchangeState createState() => _ExchangeState();
}

exchange e = exchange();

class _ExchangeState extends State<Exchange> {

  bool g1 = e.g1;
  bool g2 = e.g2;
  bool g3 = e.g3;
  bool g4 = e.g4;
  bool g5 = e.g5;
  bool g6 = e.g6;
  bool g7 = e.g7;
  bool g8 = e.g8;


  Widget newRow(String p1, int n1,String p2,int n2){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 185,width: 175, child: FlatButton(
                onPressed: (){
                  g1 ? null:setState(() {
                    e.g1 = true;
                    val.mnum = val.mnum - n1;
                    num = val.mnum;
                  });},
                child: g1 ? Container(child: Text('已经兑换'),)
                : Column(
                  children: [Image(image: AssetImage(p1),fit: BoxFit.fill,),SizedBox(height: 5,),Text('需要 ${n1}个奖章'),],))),
        Container(height: 185,width: 175,
            child: FlatButton(
                onPressed: (){
                  val.mnum = val.mnum -n2;
                },
                child: Column(
                  children: [Image(image: AssetImage(p2),fit: BoxFit.fill,),SizedBox(height: 5,), Text('需要 ${n2}个奖章'),],))),
      ],
    );
  }


  int num = val.mnum;

  int n1 = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('我的奖牌数🥇：$num', style: TextStyle(fontSize: 15),)),
          // new Text('奖章兑换'),centerTitle: true,),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g1 && (num >= n1) ? setState(() {
                    e.g1 = false;val.mnum = val.mnum - n1;num = val.mnum;}) : null;},
                  child: !e.g1 ? Container(child: Text('已经兑换'),)
                    : Column(children: [Image(image: AssetImage('images/Exchange/babys.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 ${n1}个奖章'),],))),
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g2 && (num >= n1) ? setState(() {
                    e.g2 = false;val.mnum = val.mnum - n1;num = val.mnum;}) : null;},
                  child: !e.g2 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/duolai.jpg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 ${n1}个奖章'),],))),
            ],),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g7 && (num >= n1) ? setState(() {
                      e.g7 = false;val.mnum = val.mnum - n1;num = val.mnum;}) : null;},
                  child: !e.g7 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/cake.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 ${n1}个奖章'),],))),
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g8 && (num >= 600) ? setState(() {
                      e.g8 = false;val.mnum = val.mnum - 600;num = val.mnum;}) : null;},
                  child: !e.g8 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/car.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 600个奖章'),],))),
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g3 && (num >= 500) ? setState(() {
                      e.g3 = false;val.mnum = val.mnum - 500;num = val.mnum;}) : null;},
                  child: !e.g3 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/dragon.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 500个奖章'),],))),
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g4 && (num >= 500) ? setState(() {
                      e.g4 = false;val.mnum = val.mnum - 500;num = val.mnum;}) : null;},
                  child: !e.g4 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/duominuo.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 500个奖章'),],))),
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(height: 185,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g5 && (num >= 200) ? setState(() {
                      e.g5 = false;val.mnum = val.mnum - 200;num = val.mnum;}) : null;},
                  child: !e.g5 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/siqu.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 200个奖章'),],))),
              Container(height: 210,width: 175, child: FlatButton(
                  onPressed: (){
                    e.g6 && (num >= 100) ? setState(() {
                      e.g6 = false;val.mnum = val.mnum - 100;num = val.mnum;}) : null;},
                  child: !e.g6 ? Container(child: Text('已经兑换'),)
                      : Column(children: [Image(image: AssetImage('images/Exchange/tuoluo.jpeg'),fit: BoxFit.fill,),SizedBox(height: 5,),
                    Text('需要 100个奖章'),],))),
            ],),
          ],
        ),
      ),
    );
  }
}
