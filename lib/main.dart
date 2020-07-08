import 'package:flutter/material.dart';
import 'file:///F:/Flutter_App/flutter_ui/lib/screens/calculator_screen.dart';

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
