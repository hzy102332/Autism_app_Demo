import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  FavoriteState createState() => FavoriteState();
}

class FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ζηζΆθ'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: new Center(
          child: new Text("Favorite2"),
        ),
      ),
    );
  }
}