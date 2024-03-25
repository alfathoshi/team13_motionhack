import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController
  late TextEditingController emailC;
  late TextEditingController passC;
  var isButtonActive = true.obs;

  void isEmpty() {
    if (passC.text.isNotEmpty && passC.text.isNotEmpty) {
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
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
