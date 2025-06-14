import 'package:bmi_calculator_app/core/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';

class CustomPersonCardDetails extends StatelessWidget {
  const CustomPersonCardDetails({super.key, required this.text, required this.number, required this.onAdd, required this.onRemove});

  final String text;
  final double number;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff1D1E33),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff696A77),
                fontWeight: FontWeight.w600,
              ),
            ),
        
            Text(
              number.round().toString(),
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFloatingActionButton(icon: Icons.remove, onPressed: onRemove),
                CustomFloatingActionButton(icon: Icons.add, onPressed: onAdd),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
