import 'package:flutter/material.dart';
import 'package:onboarding_app/screens/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Onboarding App",
      home: OnBoardingScreen(),
    );
  }
}
