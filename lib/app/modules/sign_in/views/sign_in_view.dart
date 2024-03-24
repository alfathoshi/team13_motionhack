import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/controllers/auth_controller.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final emailC = TextEditingController();
  final passC = TextEditingController();
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
                    'Selamat Datang',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Masuk untuk memulai',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailC,
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
                  TextField(
                    controller: passC,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Color(0xFFc4c4c4)),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      suffixIconColor: const Color(0xFFc4c4c4),
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
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF60ABEE),
                        color: Color(0xFF60ABEE),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => authC.login(emailC.text, passC.text),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFc4c4c4),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(
                          double.infinity,
                          44,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Center(child: Text('or')),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
                Text.rich(
                  TextSpan(
                    text: "Belum punya akun? ",
                    style: GoogleFonts.poppins(),
                    children: const [
                      TextSpan(
                        text: "Daftar.",
                        style: TextStyle(
                            color: Color(0xff60ABEE),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
