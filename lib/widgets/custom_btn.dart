import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Color color;
  final double radius;
  final VoidCallback onTap;
  const CustomBtn({
    Key? key,
    required this.text,
    required this.color,
    required this.onTap,
    this.radius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      minWidth: double.infinity,
      height: 55,
      color: color,
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
