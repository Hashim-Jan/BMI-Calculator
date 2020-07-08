import 'package:flutter/material.dart';
import 'package:flutterui/constants/fonts.dart';
import 'package:flutterui/ui/custom_widgets/gender_weight_age.dart';
import 'package:flutterui/ui/custom_widgets/gender_widget.dart';
import 'package:flutterui/ui/gender_height.dart';
import 'file:///F:/Flutter_App/flutter_ui/lib/screens/result_screen.dart';

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
                GenderWeightAge(text: "Weight",number:genderWeight,),
                GenderWeightAge(text: "Age", number: genderAge,)
            ],
          ),
            Container(
              height: 40,
              child: RaisedButton(
                  color: Colors.red,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ResultScreen(),));
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


