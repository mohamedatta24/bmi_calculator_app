import 'package:flutter/material.dart';

Color getBmiColor(BuildContext context, String bmi) {
  var bmiValue = double.tryParse(bmi) ?? 0.0;
  if (bmiValue < 18.5) {
    return Colors.yellow;
  } else if (bmiValue < 25) {
    return Colors.green;
  } else if (bmiValue < 35) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}
