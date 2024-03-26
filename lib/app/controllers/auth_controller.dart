import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:motionhack/app/routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void signin(String email, String pass, String username) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      createUserDocument(userCredential, username);
      Get.offAllNamed(Routes.NAVIGATION_BAR);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
         errorDialog(
          "Password terlalu lemah",
          "Silahkan gunakan password lain",
        );
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        errorDialog(
          "Email sudah digunakan",
          "Silahkan gunakan email lain",
        );
        print('The account already exists for that email.');
      } else if (email.isEmpty) {
        errorDialog(
          "Data registrasi invalid",
          "Silahkan isi data registrasi",
        );
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> createUserDocument(
      UserCredential? userCredential, String username) async {
    if (userCredential != null && userCredential.user != null) {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(userCredential.user!.email)
          .set({
        'email': userCredential.user!.email,
        'username': username,
      });
    }
  }

  void login(String email, String pass) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      Get.offAllNamed(Routes.NAVIGATION_BAR);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorDialog(
          "User Not Found",
          "Email atau Password salah",
        );

        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        errorDialog(
          "Wrong Password",
          "Password salah",
        );

        print('Wrong password provided for that user.');
      } else {
        errorDialog(
          "Data registrasi invalid",
          "Silahkan isi data registrasi",
        );
      }
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(Routes.SIGN_IN);
  }

  void signInWithGoogle() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    UserCredential userCredential = await auth.signInWithCredential(credential);
    String username = gUser.email.substring(0, gUser.email.indexOf('@'));
    createUserDocument(userCredential, username);
    Get.offAllNamed(Routes.NAVIGATION_BAR);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getData() async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(auth.currentUser!.email)
        .get();
  }

  void errorDialog(String title, String middleText) {
    Get.defaultDialog(
      title: title,
      middleText: middleText,
      confirmTextColor: Colors.white,
      buttonColor: Colors.lightBlue,
      onConfirm: () {
        Get.back();
      },
      textConfirm: "Okay",
      titleStyle: GoogleFonts.poppins(),
    );
  }
}
