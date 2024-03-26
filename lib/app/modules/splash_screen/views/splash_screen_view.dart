import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:motionhack/app/modules/home/views/home_view.dart';
// import 'package:motionhack/app/modules/sign_in/views/sign_in_view.dart';
import 'package:motionhack/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.toNamed(Routes.ON_BOARDING);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              scale: 4,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Be Healthy',
              style: TextStyle(
                fontSize: 20,
                color: const Color(0xFF60ABEE),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
