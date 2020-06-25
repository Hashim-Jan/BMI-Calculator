import 'package:flutter/material.dart';
import 'package:flutterui/constants/colors.dart';
import 'package:flutterui/constants/fonts.dart';

class WeightAge extends StatelessWidget{
  final text;
  final number;

   WeightAge({this.text, this.number});


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    // TODO: implement build
    return  Card(
      child: Container(
        height:height * 0.25,
        width:width * 0.45,
        decoration: BoxDecoration(
            color: Colors.black54
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(bottom:8.0),
              child: Text(text,style: fontsSize),
            ),
            Text(number,style: TextStyle(fontSize: 36,color:iconColor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.remove,size: 50,),
                  backgroundColor:circleAvator,
                  radius: 25,
                ),
                CircleAvatar(child: Icon(Icons.add,size: 50,),
                  backgroundColor:circleAvator,
                  radius: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}