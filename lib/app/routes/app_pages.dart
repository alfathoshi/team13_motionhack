import 'package:get/get.dart';

import 'package:motionhack/app/modules/home/bindings/home_binding.dart';
import 'package:motionhack/app/modules/home/views/home_view.dart';
import 'package:motionhack/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:motionhack/app/modules/sign_in/views/sign_in_view.dart';
import 'package:motionhack/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:motionhack/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
  ];
}
