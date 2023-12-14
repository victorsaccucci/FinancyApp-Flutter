import 'package:financy_app/features/onboarding/onboarding_page.dart';
import 'package:financy_app/features/splash_page.dart/splash_page_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingPage(),
    );
  }
}