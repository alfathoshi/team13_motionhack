import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionhack/app/data/firestore.dart';

class PostCommunityController extends GetxController {
  //TODO: Implement PostCommunityController
  final user = FirebaseAuth.instance.currentUser!;
  final db = FirestoreDatabase();
  late TextEditingController askC;

  Future<DocumentSnapshot<Map<String, dynamic>>> getData() async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(user.email)
        .get();
  }

  void postMessage(String username, String menit, String jam) {
    if (askC.text.isNotEmpty) {
      String message = askC.text;
      db.addPost(username, message, menit, jam);
      askC.clear();
      Get.back();
      Get.back();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    askC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    askC.dispose();
    super.onClose();
  }
}
