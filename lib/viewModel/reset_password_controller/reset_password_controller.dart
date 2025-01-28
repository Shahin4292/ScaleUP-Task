import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  var confirmPasswordHidden = true.obs;
  var newPasswordHidden = true.obs;
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final newPasswordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void newPasswordVisibility() {
    newPasswordHidden.value = !newPasswordHidden.value;
  }

  void confirmPasswordVisibility() {
    confirmPasswordHidden.value = !confirmPasswordHidden.value;
  }

  void resetPassword() {
    if (formKey.currentState!.validate()) {
      String newPassword = newPasswordController.text;
      String confirmPassword = confirmPasswordController.text;
      print('newPassword: $newPassword');
      print('confirmPassword: $confirmPassword');
      newPasswordController.clear();
      confirmPasswordController.clear();
      Get.toNamed('/subscription_screen');
    }
  }
}
