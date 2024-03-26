import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
          totalPage: 2,
          onFinish: () {
            Get.toNamed(Routes.SIGN_IN);
          },
          headerBackgroundColor: Colors.white,
          controllerColor: Colors.black,
          finishButtonText: 'Mulai',
          trailing: Text(
            'Lewati',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),
          ),
          finishButtonStyle:
              FinishButtonStyle(backgroundColor: Color(0xff60abee)),
          centerBackground: true,
          background: [
            Image.asset('assets/images/baby-cuate.png'),
            Image.asset('assets/images/baby-shoes-cuate.png')
          ],
          speed: 1.8,
          skipTextButton: Text(
            'Lewati',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),
          ),
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(height: 360),
                  Text(
                    'Pantau Pertumbuhan',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black)),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Dengan informasi, program, dan dukungan yang tepat, cegah stunting untuk masa depan yang lebih baik.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 360),
                  Text(
                    'Lindungi Si Kecil',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black)),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Bersama mengambil langkah-langkah yang diperlukan dalam menjaga kesehatan dan perkembangan si kecil',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    )),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ]),
    );
  }
}
