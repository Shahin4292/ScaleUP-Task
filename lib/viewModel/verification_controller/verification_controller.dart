import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  List<TextEditingController> codeControllers =
      List.generate(4, (index) => TextEditingController());
  var isButtonEnabled = false.obs;

  void validateInput() {
    isButtonEnabled.value =
        codeControllers.every((controller) => controller.text.isNotEmpty);
  }

  void clearFields() {
    for (var controller in codeControllers) {
      controller.clear();
    }
    validateInput();
  }

  void verifyCode() {
    if (isButtonEnabled.value) {
      final code = codeControllers.map((controller) => controller.text).join();
      codeControllers.clear();
      Get.toNamed('/resetYourPassword_screen');
      Get.snackbar(
        "Verification Successful",
        "Code Verified: $code",
        snackPosition: SnackPosition.TOP,
      );
    } else {
      Get.snackbar(
        "Error",
        "Please fill all fields.",
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
