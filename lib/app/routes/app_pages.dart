import 'package:get/get.dart';

import 'package:motionhack/app/modules/community/bindings/community_binding.dart';
import 'package:motionhack/app/modules/community/views/community_view.dart';
import 'package:motionhack/app/modules/consultation/bindings/consultation_binding.dart';
import 'package:motionhack/app/modules/consultation/views/consultation_view.dart';
import 'package:motionhack/app/modules/education/bindings/education_binding.dart';
import 'package:motionhack/app/modules/education/views/education_view.dart';
import 'package:motionhack/app/modules/navigation_bar/bindings/navigation_bar_binding.dart';
import 'package:motionhack/app/modules/navigation_bar/views/navigation_bar_view.dart';
import 'package:motionhack/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:motionhack/app/modules/sign_up/views/sign_up_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/video_page/bindings/video_page_binding.dart';
import '../modules/video_page/views/video_page_view.dart';

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
    GetPage(
      name: _Paths.VIDEO_PAGE,
      page: () => VideoPageView(),
      binding: VideoPageBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION_BAR,
      page: () => NavigationBarView(),
      binding: NavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.EDUCATION,
      page: () => EducationView(),
      binding: EducationBinding(),
    ),
    GetPage(
      name: _Paths.CONSULTATION,
      page: () => ConsultationView(),
      binding: ConsultationBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY,
      page: () => CommunityView(),
      binding: CommunityBinding(),
    ),
  ];
}
