import 'package:flutter/material.dart';
import 'Voice_info.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Food extends StatefulWidget {
  const Food({Key key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}


class _FoodState extends State<Food> {


  buildrow(int index, int index2){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 150, height: 150, child: FlatButton(child:
          Image(image: AssetImage('${food[index][0]}'),fit:  BoxFit.fill,),
            onPressed: (){
              setState(() {
                _newVoiceText = '${food[index][1]}';
                _speak();});},),),
        Container(width: 150, height: 150, child: FlatButton(child:
          Image(image: AssetImage('${food[index2][0]}'),fit:  BoxFit.fill,),
            onPressed: (){
              setState(() {
                _newVoiceText = '${food[index2][1]}';
                _speak();});},),),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("食物"),centerTitle: true,),
        body: ListView(
          children: [
            buildrow(0,1),
            buildrow(2,3),
            buildrow(5,4),
            buildrow(7,6),
            buildrow(9,8),
            buildrow(11,10),
          ],
        ),
    );
  }

  FlutterTts flutterTts;
  dynamic languages;
  bool isCurrentLanguageInstalled = false;
  String _newVoiceText;

  initState() {
    super.initState();
    initTts();
  }

  initTts() {
    flutterTts = FlutterTts();
    _getLanguages();
    _getEngines();
  }

  Future _speak() async {
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(0.8);
    await flutterTts.setPitch(1.0);

    if (_newVoiceText != null) {
      if (_newVoiceText.isNotEmpty) {
        await flutterTts.awaitSpeakCompletion(true);
        await flutterTts.speak(_newVoiceText);
      }}}

  Future _getLanguages() async {
    languages = await flutterTts.getLanguages;
    if (languages != null) setState(() => languages);
  }

  Future _getEngines() async {
    var engines = await flutterTts.getEngines;
    if (engines != null) {
      for (dynamic engine in engines) {
        print(engine);
      }}}

}
