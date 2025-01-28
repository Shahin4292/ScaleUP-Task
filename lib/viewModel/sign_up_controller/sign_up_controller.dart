import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isPasswordHidden = true.obs;
  var isTermsAccepted = false.obs;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleTermsAccepted() {
    isTermsAccepted.value = !isTermsAccepted.value;
  }

  void signUp() {
    if (formKey.currentState!.validate()) {
      String name = nameController.text;
      String email = emailController.text;
      String password = passwordController.text;
      print('Name: $name');
      print('Email: $email');
      print('Password: $password');
      nameController.clear();
      emailController.clear();
      passwordController.clear();
      // Get.offNamed('clear');
    }
  }
}