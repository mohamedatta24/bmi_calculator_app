
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_cubit.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_state.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/custom_gender_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomGender extends StatelessWidget {
  const CustomGender({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BmiCubit, BmiState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CustomGenderCard(
                  isGender: state.gender ? true : false,
                  icon: Icons.male,
                  text: 'Male',
                  onTap: () {
                    BlocProvider.of<BmiCubit>(context).updateGender(true);
                  },
                ),
                SizedBox(width: 20),
                CustomGenderCard(
                  isGender: state.gender ? false : true,
                  icon: Icons.female,
                  text: 'Female',
                  onTap: () {
                    BlocProvider.of<BmiCubit>(context).updateGender(false);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
