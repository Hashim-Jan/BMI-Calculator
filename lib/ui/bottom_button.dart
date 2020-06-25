import 'package:flutter/material.dart';
import 'package:flutterui/constants//colors.dart';
import 'package:flutterui/constants/fonts.dart';

class BottomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double height=50;
    final width=MediaQuery.of(context).size.width * 1;
    // TODO: implement build
    return Container(
      child: Center(child: Text("Calculate",style:fontsSize,)),
      height:height,
      width: width,
      color:buttonColor,
    );
  }
}