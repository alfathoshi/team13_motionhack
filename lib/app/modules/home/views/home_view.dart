import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/controllers/auth_controller.dart';
import 'package:motionhack/app/modules/profile/views/profile_view.dart';
import 'package:motionhack/app/routes/app_pages.dart';
import 'package:motionhack/app/shared/widgets/health_data.dart';
import 'package:motionhack/app/shared/widgets/home_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  final user = FirebaseAuth.instance.currentUser!;
  final homeC = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo,',
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            FutureBuilder(
              future: authC.getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                } else if (snapshot.hasData) {
                  Map<String, dynamic>? user = snapshot.data!.data();
                  return Text(
                    user!['username'],
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  );
                } else {
                  return Text('No Data');
                }
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "On Development",
                  middleText: "This feature is on development",
                  confirmTextColor: Colors.white,
                  buttonColor: Colors.lightBlue,
                  onConfirm: () {
                    Get.back();
                  },
                  textConfirm: "Okay",
                  titleStyle: GoogleFonts.poppins());
            },
            icon: const Icon(Icons.headset_mic),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.PROFILE);
            },
            icon: const Icon(Icons.account_circle),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 35,
              color: Colors.lightBlue.shade100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Semangat! Perkembangannya sudah cukup bagus, loh!',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            HealthData(),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text('Rekomendasi',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  )),
            ),
            HomeCard(
              titleColor: Colors.blue,
              color: Colors.lightBlue.shade100,
              image: 'assets/images/home1.png',
              rekomendasi: 'Untuk para orang tua!',
              title:
                  'Mengatasi Stunting: Peran \nPenting ASI Eksklusif dan \nPola Makan Sehat',
            ),
            HomeCard(
              titleColor: Colors.orange,
              color: Colors.yellow.shade200,
              image: 'assets/images/home1.png',
              rekomendasi: 'Rekomendasi Terbaru',
              title:
                  'Berjuang melawan Stunting: \nLangkah-langkah Praktis bagi \nOrang Tua dan Komunitas',
            ),
            HomeCard(
              titleColor: Colors.purple,
              color: Colors.purple.shade100,
              image: 'assets/images/home1.png',
              rekomendasi: 'Komunitas',
              title:
                  'Berbagi bersama Orang Tua \nLainnya untuk Berbagai \nInformasi Mengenai Stunting',
            )
          ],
        ),
      ),
    );
  }
}
