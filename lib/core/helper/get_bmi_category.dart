import 'package:flutter/material.dart';

String getBmiCategory(BuildContext context, String bmi) {
  final double bmiValue = double.tryParse(bmi) ?? 0.0;
  if (bmiValue < 18.5) return 'Underweight';
  if (bmiValue < 25) return 'Normal';
  if (bmiValue < 35) return 'Overweight';
  return 'Obese';
}


