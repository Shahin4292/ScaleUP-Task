import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetController extends GetxController {
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void forgetPassword() {
    if (formKey.currentState!.validate()) {
      String email = emailController.text;
      print('Email: $email');
      emailController.clear();
      Get.toNamed('/verification_screen');
    }
  }
}