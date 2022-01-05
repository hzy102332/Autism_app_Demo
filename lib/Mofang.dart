import 'package:flutter/material.dart';


class Mofang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text("知识图片"),centerTitle: true,),
          body: Container(
              child: ListView(
                children: [
                  Container(height:125, child: ListView(scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Black.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Blue.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Brown.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Circle.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Green.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Gray.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Heart.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Oval.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Pink.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Red.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Yellow.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/color/Star.png'),),),),SizedBox(width: 5,),

                    ],
                  ),),
                  SizedBox(height: 10,),
                  Container(height:125, child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/January.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/February.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/March.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/April.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/May.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/June.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/July.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Aug.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Sept.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Oct.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Dec.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Nov.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Spring.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Summer.png'),),),),SizedBox(width: 5,),
                        Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                          image: new AssetImage('images/month/Winter.png'),),),),SizedBox(width: 5,),
                      ],),),
                  SizedBox(height: 10,),
                  Container(height:125, child: ListView(scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/1.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/2.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/3.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/4.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/5.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/6.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/7.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/clock/8.png'),),),),SizedBox(width: 5,),
                    ],
                  ),),
                  SizedBox(height: 10,),
                  Container(height:125, child: ListView(scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/a.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/B.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/C.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/D.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/E.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/F.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/character/G.png'),),),),SizedBox(width: 5,),

                    ],
                  ),),
                  SizedBox(height: 10,),
                  Container(height:125, child: ListView(scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Bacon.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Cake.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Cheeseburger.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Chilli pepper.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Corn.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Corn Dog.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/French fries.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Ham.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Lemon.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Lettuce.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Onion.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Peach.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Pie.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Plum.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Soda.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/food/Sandwich.png'),),),),SizedBox(width: 5,),
                    ],
                  ),),
                  SizedBox(height: 10,),
                  Container(height:125, child: ListView(scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Axe.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Belt.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Boots.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Cleats.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Cymbal.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Gift.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Glue.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Hammer.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Minivan.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Pan.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Pick.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Police Car.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Quarter.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/object/Spoon.png'),),),),SizedBox(width: 5,),



                    ],
                  ),),
                  SizedBox(height: 10,),
                  Container(height:125, child: ListView(scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Biting.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Climbing.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Eating Objects.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Kicking.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Running.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Pointing.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/Stop.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Sleeping.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Throwing.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Scratching.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Punching.png'),),),),SizedBox(width: 5,),
                      Container(width: 125, decoration: new BoxDecoration(image: new DecorationImage(
                        image: new AssetImage('images/symbol/No Playing in Trash.png'),),),),
                    ],
                  ),),
                ],
              ),
            )
    );
  }
}
