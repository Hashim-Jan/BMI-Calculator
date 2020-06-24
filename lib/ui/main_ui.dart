import 'package:flutter/material.dart';
import 'package:flutterui/ui/bottom_button.dart';
import 'package:flutterui/ui/first_portion.dart';
import 'package:flutterui/ui/mid_portion.dart';
import 'package:flutterui/ui/third_portion.dart';

class MainUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("BMI Calculator")),
      backgroundColor: Colors.black54,
      elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          children: <Widget>[
            FirstPortion(),
            MidPortion(),
            ThirdPortion(),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}