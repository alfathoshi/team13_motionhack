import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionhack/app/modules/splash_screen/views/splash_screen_view.dart';
import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: SplashScreenView(),
      getPages: AppPages.routes,
    ),
  );
}
