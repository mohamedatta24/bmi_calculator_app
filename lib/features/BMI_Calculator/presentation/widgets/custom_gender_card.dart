import 'package:flutter/material.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard({
    super.key,
    required this.text,
    this.onTap,
    required this.icon,
    required this.isGender,
  });

  final String text;
  final void Function()? onTap;
  final IconData icon;
  final bool isGender;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isGender ? Color(0xffF50D56) : Color(0xff111327),
            borderRadius: BorderRadius.circular(12.0),
          ),
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(icon, size: 120, color: Colors.white),
              Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
