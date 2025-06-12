import 'package:bmi_calculator_app/features/presentation/BMI_Calculator/widgets/custom_gender_card.dart';
import 'package:flutter/material.dart';

class CustomGender extends StatefulWidget {
  const CustomGender({super.key});

  @override
  State<CustomGender> createState() => _CustomGenderState();
}

class _CustomGenderState extends State<CustomGender> {

  bool isGender = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CustomGenderCard(
              isGender: isGender ? true : false,
              icon: Icons.male,
              text: 'Male',
              onTap: () {
                setState(() {
                  isGender = true;
                });
              },
            ),
            SizedBox(width: 20),
            CustomGenderCard(
              isGender: isGender ? false : true,
              icon: Icons.female,
              text: 'Female',
              onTap: () {
                setState(() {
                  isGender = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
