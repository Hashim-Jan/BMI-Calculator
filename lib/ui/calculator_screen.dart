import 'package:flutter/material.dart';
import 'package:flutterui/constants/fonts.dart';
import 'package:flutterui/ui/custom_widgets/gender_weight_age.dart';
import 'package:flutterui/ui/custom_widgets/gender_widget.dart';
import 'package:flutterui/ui/gender_height.dart';
import 'package:flutterui/ui/result_screen.dart';

class CalculatorScreen extends StatelessWidget{
  final int genderWeight,genderAge;
  CalculatorScreen({this.genderWeight,this.genderAge});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("BMI Calculator")),
      backgroundColor: Colors.black54,
        elevation: 0.0,
      ),
      body: Container(
          color: Colors.black,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaleFemale(icon: Icons.accessibility,text:"Male",),
                MaleFemale(icon: Icons.airline_seat_recline_normal,text:"FeMale",),
              ],
            ),
            GenderHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                WeightAge(text: "Weight",number:genderWeight,),
                WeightAge(text: "Age", number: genderAge,)
            ],
          ),
            Container(
              height: 40,
              child: RaisedButton(
                  color: Colors.red,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>GenderResult(),));
                  },
                  child: Center(child: Text("Calculate",style:fontsSize,))
              ),
            ),
          ],
        ),
      ),
    );
  }
}


