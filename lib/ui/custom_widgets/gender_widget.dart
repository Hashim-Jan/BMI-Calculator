import 'package:flutter/material.dart';
import 'package:flutterui/constants/colors.dart';

Color inactiveColor=Colors.blueGrey;
Color activeColor=Colors.brown;
enum Gender{
  male,female
}
Color color;
class MaleFemale extends StatefulWidget {
  final icon;
  final text;
  MaleFemale({Key key,this.icon, this.text}):super(key : key);
  @override
  _MaleFemaleState createState() => _MaleFemaleState();
}

class _MaleFemaleState extends State<MaleFemale> {
  Gender gender;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    // TODO: implement build
    return Card(
      child: GestureDetector(
        onTap: (){
          setState(() {

          });
        },
        child: Container(
          height:height * 0.25,
          width:width * 0.45,
          decoration: BoxDecoration(
              color: Colors.black54
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(widget.icon,size:50,color: iconColor,),
              Text(widget.text,style:TextStyle(color:textColor,fontSize: 24),)
            ],
          ),
        ),
      ),
    );
  }
}