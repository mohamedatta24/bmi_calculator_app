import 'package:bmi_calculator_app/core/helper/get_bmi_category.dart';
import 'package:bmi_calculator_app/core/helper/get_bmi_color.dart';
import 'package:bmi_calculator_app/core/helper/get_bmi_result_text.dart';
import 'package:bmi_calculator_app/core/widgets/custom_button.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_cubit.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCalculatorDetailsBody extends StatelessWidget {
  const BmiCalculatorDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var calculateBMI = BlocProvider.of<BmiCubit>(
      context,
    ).calculateBMI().toStringAsFixed(1);
    return BlocBuilder<BmiCubit, BmiState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(height: 20.0),
            Text(
              'YOUR RESULT',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff111327),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getBmiCategory(context, calculateBMI),
                        style: TextStyle(
                          color: getBmiColor(context, calculateBMI),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        calculateBMI,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        getBmiResultText(context, calculateBMI),
                        style: TextStyle(
                          color: getBmiColor(context, calculateBMI),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            CustomButton(
              text: 'RE-CALCULATE',
              onPressed: () {
                Navigator.of(context).pop(); // Go back to recalculate
              },
            ),
          ],
        );
      },
    );
  }
}
