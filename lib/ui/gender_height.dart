import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterui/constants//colors.dart';

class GenderHeight extends StatefulWidget {
  @override
  _GenderHeightState createState() => _GenderHeightState();
}

class _GenderHeightState extends State<GenderHeight> {
  int genderHeight=0;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    // TODO: implement build
    return Card(
      child: Container(
        height:height * 0.27,
        width:width * 0.95,
        decoration: BoxDecoration(
            color: Colors.black54
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Height",style:TextStyle(fontSize: 24,color:textColor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(genderHeight.toString(),style:TextStyle(fontSize: 24,color:iconColor),),
                Text("cm",style: TextStyle(color:textColor),),
              ],
            ),
            Slider(
              min: 0,
              max: 200,
              activeColor: Colors.red,
              inactiveColor: Colors.white,
              value: genderHeight.toDouble(),
              onChanged: (double value) {
                setState(() {
                  genderHeight=value.round();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}