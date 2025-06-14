import 'package:flutter/widgets.dart';

String getBmiResultText(BuildContext context, String bmi) {
  final double bmiValue = double.tryParse(bmi) ?? 0.0;
  if (bmiValue < 18.5) {
    return 'Underweight: You need to eat more!';
  } else if (bmiValue < 25) {
    return 'Normal: Good Job!';
  } else if (bmiValue < 35) {
    return 'Overweight: Take care!';
  } else {
    return 'Obese: Consult your doctor.';
  }
}