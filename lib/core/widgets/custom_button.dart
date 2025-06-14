import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});

  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Color(0xffF50D56),
      child: MaterialButton(
        onPressed: onPressed,
        elevation: 0.0,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
