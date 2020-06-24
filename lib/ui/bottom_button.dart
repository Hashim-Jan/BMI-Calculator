import 'package:flutter/material.dart';
import 'package:flutterui/colors/ui_colors.dart';

class BottomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var veriables = VeriableColors();
    // TODO: implement build
    return Container(
      child: Center(child: Text("Calculate",style: TextStyle(color:veriables.textColor,fontWeight: FontWeight.bold,fontSize: 20),)),
      height: 50,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.red,
    );
  }
}