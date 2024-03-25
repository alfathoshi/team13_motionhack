import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  late TextEditingController emailC;
  late TextEditingController passC;
  late TextEditingController confirmPassC;
  var isButtonActive = true.obs;

  void isEmpty() {
    if (passC.text.isNotEmpty &&
        passC.text.isNotEmpty &&
        confirmPassC.text.isNotEmpty) {
      isButtonActive(false);
    } else {
      isButtonActive(true);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    emailC = TextEditingController();
    passC = TextEditingController();
    confirmPassC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailC.dispose();
    passC.dispose();
    confirmPassC.dispose();
    super.onClose();
  }
}
