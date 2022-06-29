import 'package:flutter/material.dart';
import 'package:task1/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algoriza Task 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xFF07B1A7)),
      home: const OnBoardingPage(),
    );
  }
}
