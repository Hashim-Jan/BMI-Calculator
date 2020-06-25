import 'package:flutter/material.dart';
import 'package:flutterui/constants/colors.dart';

class GenderWidget extends StatelessWidget{
  final icon;
  final text;
  GenderWidget({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    double iconSize=60;
    // TODO: implement build
    return Card(
      child: Container(
        height:height * 0.25,
        width:width * 0.45,
        decoration: BoxDecoration(
            color: Colors.black54
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon,size:50,color: iconColor,),
            Text(text,style:TextStyle(color:textColor,fontSize: 24),)
          ],
        ),
      ),
    );
  }
}