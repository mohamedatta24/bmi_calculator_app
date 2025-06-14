import 'package:bmi_calculator_app/core/widgets/custom_button.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/views/bmi_calculator_details.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/custom_gender.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/custom_person_Card.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/custom_slider.dart';
import 'package:flutter/material.dart';

class BmiCalculatorBody extends StatelessWidget {
  const BmiCalculatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomGender(),
        CustomSlider(),
        CustomPersonCard(),
        CustomButton(
          text: 'CALCULATE',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return BmiCalculatorDetails();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
