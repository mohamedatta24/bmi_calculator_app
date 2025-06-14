import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/bmi_calculator_body.dart';
import 'package:flutter/material.dart';


class BmiCalculatorView extends StatelessWidget {
  const BmiCalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E20),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E20),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: BmiCalculatorBody(),
    );
  }
}
