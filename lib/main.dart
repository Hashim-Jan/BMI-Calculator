import 'package:flutter/material.dart';
import 'package:flutterui/ui/main_ui.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: MainUi(),
    );
  }
}
