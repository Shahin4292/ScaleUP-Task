import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/assets/app_assets.dart';
import 'package:scale_up_task/res/components/text.dart';
import 'package:scale_up_task/view/sign_up_screen/widget/name_field.dart';
import 'package:scale_up_task/view/sign_up_screen/widget/password_field.dart';
import 'package:scale_up_task/view/sign_up_screen/widget/text_field.dart';

import '../../res/components/icon_box.dart';
import '../../viewModel/sign_up_controller/sign_up_controller.dart';
import '../login_screen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController signUpController = Get.put(SignUpController());

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 15),
          child: Form(
            key: signUpController.formKey,
            child: Column(
              spacing: 18,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(text: "Sign Up", size: 30, color: Colors.white),
                ModifiedText(
                  text:
                      "Integer ultricies dolor enim id sed pulvinar sagittis in. Morbi venenatis nunc turpis morbi. Vitae ullamcorper vehicula praesent lorem.",
                  color: Colors.white,
                  size: 13,
                  fontWeight: FontWeight.normal,
                ),
                Column(
                  spacing: 18,
                  children: [
                    NameFieldInput(
                      signUpController: signUpController,
                    ),
                    TextFieldInput(
                      signUpController: signUpController,
                    ),
                    PasswordFieldInput(
                      signUpController: signUpController,
                    ),
                    Obx(
                      () => Row(
                        children: [
                          Checkbox(
                            value: signUpController.isTermsAccepted.value,
                            onChanged: (value) =>
                                signUpController.toggleTermsAccepted(),
                            activeColor: Colors.red,
                            focusColor: Colors.red,
                          ),
                          const Text(
                            'I agree to the terms & conditions',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    Obx(
                      () => ElevatedButton(
                        onPressed: signUpController.isTermsAccepted.value
                            ? signUpController.signUp
                            : SizedBox.shrink,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize:
                              Size(MediaQuery.sizeOf(context).width, 60),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Or Sign Up with',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    IconBox(
                      onPress: () {},
                      image: AppAssets.google,
                    ),
                    IconBox(
                      onPress: () {},
                      image: AppAssets.facebook,
                    ),
                    IconBox(
                      onPress: () {},
                      image: AppAssets.instagram,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: signUpController.navigateToLogin,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
