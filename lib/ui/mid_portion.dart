import 'package:flutter/material.dart';
import 'package:flutterui/colors/ui_colors.dart';

class MidPortion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    var veriables = VeriableColors();
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
            Text("Height",style:TextStyle(fontSize: 24,color:veriables.textColor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("181",style:TextStyle(fontSize: 36,color:veriables.iconColor),),
                Text("cm",style: TextStyle(color: veriables.textColor),)
              ],
            )
          ],
        ),
      ),
    );
  }
}