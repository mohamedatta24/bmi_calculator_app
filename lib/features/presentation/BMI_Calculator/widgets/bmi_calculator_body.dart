import 'package:bmi_calculator_app/features/presentation/BMI_Calculator/widgets/custom_gender.dart';
import 'package:flutter/material.dart';

class BmiCalculatorBody extends StatelessWidget {
  const BmiCalculatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomGender(),
        Expanded(child: Container(width: double.infinity, color: Colors.red)),
        Expanded(child: Container(width: double.infinity, color: Colors.amber)),
        Container(
          width: double.infinity,
          height: 60,
          color: Colors.green,
          child: MaterialButton(onPressed: () {}),
        ),
      ],
    );
  }
}

