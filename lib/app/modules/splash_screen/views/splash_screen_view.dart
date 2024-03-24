import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:motionhack/app/modules/home/views/home_view.dart';
// import 'package:motionhack/app/modules/sign_in/views/sign_in_view.dart';
import 'package:motionhack/app/modules/onboarding/views/onboarding_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => OnboardingView(),
          ),
          (route) => false);
    });
    return const Scaffold(
      backgroundColor: Color(0xFF60ABEE),
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
