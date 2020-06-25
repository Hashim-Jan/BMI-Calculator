import 'package:flutter/material.dart';
import 'package:flutterui/ui/bottom_button.dart';
import 'package:flutterui/ui/custom_widgets/gender_weight_age.dart';
import 'file:///F:/Flutter_App/flutter_ui/lib/ui/custom_widgets/gender_widget.dart';
import 'package:flutterui/ui/mid_portion.dart';
import '';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GenderWidget(icon: Icons.accessibility,text:"Male",),
                GenderWidget(icon: Icons.airline_seat_recline_normal,text:"FeMale",),
              ],
            ),
            MidPortion(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              WeightAge(text: "Weight",number:"45",),
              WeightAge(text: "Age", number: "38",)
            ],
          ),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}