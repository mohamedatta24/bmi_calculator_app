
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_cubit.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/views/bmi_calculator_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiCalculatorView(),
      ),
    );
  }
}
