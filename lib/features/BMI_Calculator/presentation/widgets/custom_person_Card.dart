import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_cubit.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/cubit/bmi_state.dart';
import 'package:bmi_calculator_app/features/BMI_Calculator/presentation/widgets/custom_person_card_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPersonCard extends StatelessWidget {
  const CustomPersonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BmiCubit, BmiState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CustomPersonCardDetails(
                  text: 'weight',
                  number: state.weight,
                  onAdd: () {
                    BlocProvider.of<BmiCubit>(
                      context,
                    ).updateWeight(state.weight + 1);
                  },
                  onRemove: () {
                    state.weight;
                    BlocProvider.of<BmiCubit>(
                      context,
                    ).updateWeight(state.weight - 1);
                  },
                ),
                SizedBox(width: 20),

                CustomPersonCardDetails(
                  text: 'age',
                  number: state.age,
                  onAdd: () {
                    BlocProvider.of<BmiCubit>(context).updateAge(state.age + 1);
                  },
                  onRemove: () {
                    BlocProvider.of<BmiCubit>(context).updateAge(state.age - 1);
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
