import 'package:flutter/material.dart';

class SimpleLink extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? text;
  const SimpleLink({Key? key, this.onTap, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: text,
    );
  }
}
