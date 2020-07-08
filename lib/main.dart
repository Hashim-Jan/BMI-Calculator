import 'package:flutter/material.dart';
import 'package:flutterui/ui/calculator_screen.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}
