import 'package:flutter/material.dart';
import 'package:flutterui/constants/colors.dart';
import 'package:flutterui/constants/fonts.dart';

class WeightAge extends StatefulWidget {
  String text;
  int number =0;
  WeightAge({Key key , this.text, this.number}):super(key: key);
  @override
  _WeightAgeState createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {
  int num=0;
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
              child: Text(widget.text,style: fontsSize),
            ),
            Text(num.toString(),style: TextStyle(fontSize: 36,color:iconColor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(child: (Icon(Icons.remove,size: 40,color: iconColor,)),
                  backgroundColor:circleAvator,
                  onPressed: (){
                    setState(() {
                      decrementAgeWeight();
                    });
                  },
                ),
                FloatingActionButton(child: Icon(Icons.add,size: 40,color: iconColor,),
                  backgroundColor:circleAvator,
                  onPressed: (){
                    setState(() {
                      incrementAgeWeight();
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  int incrementAgeWeight(){
      num++;
  }
  int decrementAgeWeight(){
    num--;
  }
}