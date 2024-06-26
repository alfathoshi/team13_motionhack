import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/controllers/auth_controller.dart';
import 'package:motionhack/app/routes/app_pages.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Buat Akun',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Mulai perjalananmu untuk cegah stunting',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {
                      controller.isEmpty();
                    },
                    controller: controller.usernameC,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: const TextStyle(color: Color(0xFFc4c4c4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xFFc4c4c4))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    onChanged: (value) {
                      controller.isEmpty();
                    },
                    controller: controller.emailC,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Color(0xFFc4c4c4)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xFFc4c4c4))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Obx(() => TextField(
                        onChanged: (value) {
                          controller.isEmpty();
                        },
                        obscureText: controller.isSecure.value,
                        controller: controller.passC,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Color(0xFFc4c4c4)),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye),
                            onPressed: () {
                              controller.showPassword();
                            },
                          ),
                          suffixIconColor: const Color(0xFFc4c4c4),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFFc4c4c4))),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  Obx(() => TextField(
                        onChanged: (value) {
                          controller.isEmpty();
                        },
                        obscureText: controller.isSecureC.value,
                        controller: controller.confirmPassC,
                        decoration: InputDecoration(
                          hintText: 'Konfirmasi Password',
                          hintStyle: const TextStyle(color: Color(0xFFc4c4c4)),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye),
                            onPressed: () {
                              controller.showPasswordC();
                            },
                          ),
                          suffixIconColor: const Color(0xFFc4c4c4),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFFc4c4c4))),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 68,
                  ),
                  Obx(() => ElevatedButton(
                        onPressed: () => authC.signin(
                          controller.emailC.text,
                          controller.passC.text,
                          controller.usernameC.text,
                          controller.confirmPassC.text,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: controller.isButtonActive.value
                                ? Color(0xFFc4c4c4)
                                : Colors.blue,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(
                              double.infinity,
                              44,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          'Daftar',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold),
                        ),
                      )),
                  const SizedBox(
                    height: 24,
                  ),
                  const Center(child: Text('or')),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      authC.signInWithGoogle();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(
                        double.infinity,
                        44,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Color(0xFFd3d3d3))),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/google.png',
                          scale: 3,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Masuk dengan Google',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun? ',
                      style: GoogleFonts.poppins(),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(Routes.SIGN_IN),
                      child: Text(
                        'Masuk',
                        style: GoogleFonts.poppins(color: Color(0xFF60ABEE)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
