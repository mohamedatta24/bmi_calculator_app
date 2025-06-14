import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/bmi_calculator_details_body.dart';
import 'package:flutter/material.dart';


class BmiCalculatorDetails extends StatelessWidget {
  const BmiCalculatorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E20),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0A0E20),
        title: const Text(
          'BMI DETAILS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: BmiCalculatorDetailsBody(),
    );
  }
}
