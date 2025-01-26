import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isPasswordHidden = true.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    // Add login logic here
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isEmpty || password.isEmpty) {
      // Get.snackbar('Error', 'Please fill all fields',
      //     snackPosition: SnackPosition.BOTTOM);
    }
    // } else {
    //   // Call your API or authentication logic here
    //   print('Email: $email');
    //   print('Password: $password');
    // }
  }

  void navigateToSignUp() {
    // Navigate to sign-up screen
    Get.toNamed('/signup');
  }

  void forgotPassword() {
    // Navigate to forgot password screen
    Get.toNamed('/forgot-password');
  }
}
