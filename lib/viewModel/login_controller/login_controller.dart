import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isPasswordHidden = true.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    if (formKey.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;
      print('Email: $email');
      print('Password: $password');
      emailController.clear();
      passwordController.clear();
      Get.toNamed('/bottom_bar');
    }
  }

  void navigateToSignUp() {
    emailController.clear();
    passwordController.clear();
    Get.toNamed('/sign_up_screen');
  }

  void forgotPassword() {
    emailController.clear();
    passwordController.clear();
    Get.toNamed('/forget_password');
  }
}
