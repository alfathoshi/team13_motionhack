import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionhack/app/controllers/auth_controller.dart';
import 'package:motionhack/app/utils/loading.dart';
import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authC.streamAuthStatus,
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.connectionState == ConnectionState.active) {
            print(snapshot.data);
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: snapshot.data != null
                  ? Routes.NAVIGATION_BAR
                  : Routes.SPLASH_SCREEN,
              getPages: AppPages.routes,
            );
          } else {
            return const LoadingView();
          }
        });
  }
}
