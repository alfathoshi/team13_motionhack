import 'package:get/get.dart';
import 'package:motionhack/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:motionhack/app/modules/onboarding/views/onboarding_view.dart';

import '../modules/article_detail/bindings/article_detail_binding.dart';
import '../modules/article_detail/views/article_detail_view.dart';
import '../modules/community/bindings/community_binding.dart';
import '../modules/community/views/community_view.dart';
import '../modules/consultant/bindings/consultant_binding.dart';
import '../modules/consultant/views/consultant_view.dart';
import '../modules/consultation/bindings/consultation_binding.dart';
import '../modules/consultation/views/consultation_view.dart';
import '../modules/education/bindings/education_binding.dart';
import '../modules/education/views/education_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navigation_bar/bindings/navigation_bar_binding.dart';
import '../modules/navigation_bar/views/navigation_bar_view.dart';
import '../modules/post_community/bindings/post_community_binding.dart';
import '../modules/post_community/views/post_community_view.dart';
import '../modules/reservation/bindings/reservation_binding.dart';
import '../modules/reservation/views/reservation_view.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
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
    GetPage(
      name: _Paths.POST_COMMUNITY,
      page: () => PostCommunityView(),
      binding: PostCommunityBinding(),
    ),
    GetPage(
      name: _Paths.CONSULTANT,
      page: () => const ConsultantView(),
      binding: ConsultantBinding(),
    ),GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ARTICLE_DETAIL,
      page: () => const ArticleDetailView(),
      binding: ArticleDetailBinding(),
    ),
    GetPage(
      name: _Paths.RESERVATION,
      page: () => ReservationView(),
      binding: ReservationBinding(),
    ),
  ];
}
