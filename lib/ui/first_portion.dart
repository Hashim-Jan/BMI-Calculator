import 'package:flutter/material.dart';
import 'package:flutterui/colors/ui_colors.dart';

class FirstPortion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    double iconSize=60;
    var veriables = VeriableColors();
    // TODO: implement build
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Card(
          child: Container(
            height:height * 0.25,
            width:width * 0.45,
            decoration: BoxDecoration(
                color: Colors.black54
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessibility,size: iconSize,color: veriables.iconColor,),
                Text("MALE",style:TextStyle(color: veriables.textColor,fontSize: 24),)
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            height:height * 0.25,
            width:width * 0.45,
            decoration: BoxDecoration(
                color: Colors.black54
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.airline_seat_recline_normal,size: iconSize,color: veriables.iconColor,),
                Text("FEMALE",style:TextStyle(color: veriables.textColor,fontSize: 24),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}