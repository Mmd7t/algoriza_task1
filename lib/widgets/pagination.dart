import 'package:flutter/material.dart';

class Pagination extends StatelessWidget {
  final int currentPage;
  final int length;
  final Color activeColor;
  final Color inActiveColor;

  const Pagination({
    Key? key,
    required this.currentPage,
    required this.length,
    required this.activeColor,
    required this.inActiveColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.bottomCenter,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          length,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            margin: const EdgeInsets.symmetric(horizontal: 3.3),
            height: 10,
            width: (index == currentPage) ? 25 : 6,
            decoration: BoxDecoration(
              color: (index == currentPage) ? activeColor : inActiveColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
