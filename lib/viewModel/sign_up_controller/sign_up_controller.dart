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

      // Clear the text fields after login
      nameController.clear();
      emailController.clear();
      passwordController.clear();

      // Navigate to another page
      Get.offNamed('/home');
    } else {
      Get.snackbar('Error', 'Please correct the errors in the form',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void navigateToSignUp() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    Get.toNamed('/signup');
  }

  void forgotPassword() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    Get.toNamed('/forgot-password');
  }
}
// final usernameController = TextEditingController();
// final emailController = TextEditingController();
// final passwordController = TextEditingController();
// var isPasswordHidden = true.obs;
// var isTermsAccepted = false.obs;
//
// void togglePasswordVisibility() {
//   isPasswordHidden.value = !isPasswordHidden.value;
// }
//
// void toggleTermsAccepted() {
//   isTermsAccepted.value = !isTermsAccepted.value;
// }
//
// void signUp() {
//   String username = usernameController.text;
//   String email = emailController.text;
//   String password = passwordController.text;
//
//   if (username.isEmpty || email.isEmpty || password.isEmpty) {
//     Get.snackbar('Error', 'All fields are required',
//         snackPosition: SnackPosition.BOTTOM);
//   } else if (!isTermsAccepted.value) {
//     Get.snackbar('Error', 'You must accept the terms and conditions',
//         snackPosition: SnackPosition.BOTTOM);
//   } else {
//     // Add sign-up logic here
//     print('Username: $username');
//     print('Email: $email');
//     print('Password: $password');
//   }
// }
//
// void navigateToLogin() {
//   Get.toNamed('/login');
// }
