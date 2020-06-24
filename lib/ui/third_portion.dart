import 'package:flutter/material.dart';
import 'package:flutterui/colors/ui_colors.dart';

class ThirdPortion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    double iconSize=50;
    var veriables = VeriableColors();
    // TODO: implement build
    return Row(
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
                Padding(
                  padding:EdgeInsets.only(bottom:8.0),
                  child: Text("Weight",style: TextStyle(color: veriables.textColor,fontSize: 24),),
                ),
                Text("60",style: TextStyle(fontSize: 36,color: veriables.iconColor),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(child: Icon(Icons.remove,size: iconSize,),
                    backgroundColor: Colors.black54,
                      radius: 25,
                    ),
                    CircleAvatar(child: Icon(Icons.add,size: iconSize,),
                      backgroundColor: Colors.black54,
                      radius: 25,
                    ),
                  ],
                )
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
                Padding(
                  padding:EdgeInsets.only(bottom:8.0),
                  child: Text("Age",style: TextStyle(color: veriables.textColor,fontSize: 24),),
                ),
                Text("40",style: TextStyle(fontSize: 36,color: veriables.iconColor),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(child: Icon(Icons.remove,size: iconSize,),
                      backgroundColor: Colors.black54,
                      radius: 25,
                    ),
                    CircleAvatar(child: Icon(Icons.add,size: iconSize,),
                      backgroundColor: Colors.black54,
                      radius: 25,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}