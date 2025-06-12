import 'package:bmi_calculator_app/features/presentation/BMI_Calculator/views/bmi_calculator_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculatorView(),
    );
  }
}