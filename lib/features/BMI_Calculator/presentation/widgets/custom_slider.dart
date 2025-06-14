import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_cubit.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BmiCubit, BmiState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff1D1E32),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff777883),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        state.height.round().toString(),
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'CM',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: state.height,
                    max: 220,
                    min: 120,
                    activeColor: const Color(0xffB5B5BB),
                    inactiveColor: Color(0xff686976),
                    thumbColor: Color(0xffF50D56),
                    divisions: 100,
                    label: '${state.height} cm',
                    onChanged: (value) {
                      BlocProvider.of<BmiCubit>(context).updateHeight(value);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
