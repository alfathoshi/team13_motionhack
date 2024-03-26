import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/controllers/auth_controller.dart';
import 'package:motionhack/app/shared/widgets/health_data.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profil',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profilePict.png'),
                ),
                const SizedBox(height: 10),
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
                      return Column(
                        children: [
                          Text(
                            user!['username'],
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            user['email'],
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(fontSize: 15)),
                          ),
                        ],
                      );
                    } else {
                      return const Text('No Data');
                    }
                  },
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff60abee),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit Profil',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 56),
                HealthData(),
                const SizedBox(height: 15),
                ListTile(
                  title: Text(
                    'Riwayat Catatan Perkembangan',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 15)),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                ),
                ListTile(
                  title: Text(
                    'Riwayat Konsultasi',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 15)),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                ),
                GestureDetector(
                  onTap: () {
                    authC.logout();
                  },
                  child: ListTile(
                    title: Text(
                      'Keluar',
                      style: GoogleFonts.poppins(
                          textStyle:
                              const TextStyle(fontSize: 15, color: Colors.red)),
                    ),
                    trailing: const Icon(Icons.arrow_right),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
