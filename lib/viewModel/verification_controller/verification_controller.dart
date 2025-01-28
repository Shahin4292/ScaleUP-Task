import 'dart:async';

import 'package:get/get.dart';

class VerificationController extends GetxController {
  var otpCode = "".obs;
  var resendTime = 10.obs;
  var errorMessage = "".obs;

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (resendTime.value > 0) {
        resendTime.value--;
      } else {
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    resendTime.value = 10;
    startTimer();
  }

  void verifyOTP() {
    if (otpCode.value.length == 4) {
      errorMessage.value = "";
      Get.snackbar("Success", "OTP Verified Successfully!",
          snackPosition: SnackPosition.BOTTOM);
      Get.toNamed('/resetYourPassword_screen');
    } else {
      errorMessage.value = "Please enter a valid 4-digit OTP";
    }
  }
}
