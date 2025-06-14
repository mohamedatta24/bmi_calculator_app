import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, this.onPressed, required this.icon});

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      mini: true,
      onPressed: onPressed,
      backgroundColor: Color(0xff4C4F5D),
      child: Icon(icon, size: 25, color: Colors.white),
    );
  }
}
