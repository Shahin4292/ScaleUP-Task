import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/assets/app_assets.dart';
import 'package:scale_up_task/res/colors/app_colors.dart';
import 'package:scale_up_task/res/components/text.dart';
import 'package:scale_up_task/view/login_screen/widget/custom_password_field.dart';
import 'package:scale_up_task/view/login_screen/widget/custom_text_field.dart';

import '../../res/components/round_button.dart';
import '../../viewModel/login_controller/login_controller.dart';
import '../sign_up_screen/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: loginController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              children: [
                Center(
                  child: Image.asset(
                    AppAssets.logo,
                    height: 195,
                    width: 136,
                  ),
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Welcome!\nto ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 32)),
                      TextSpan(
                          text: "UIPtv",
                          style: TextStyle(
                              color: AppColor.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 40)),
                    ])),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    CustomTextField(loginController: loginController),
                    CustomPasswordField(loginController: loginController),
                    RoundButton(
                      title: 'Login',
                      onPress: loginController.login,
                      height: 64,
                      width: MediaQuery.sizeOf(context).width,
                    ),
                    GestureDetector(
                      onTap: loginController.forgotPassword,
                      child: ModifiedText(
                        text: 'Forgot Password',
                        color: AppColor.redShade,
                        fontWeight: FontWeight.normal,
                        size: 14,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ModifiedText(
                        text: "Don't have an account? ",
                        color: Colors.white,
                        size: 14,
                        fontWeight: FontWeight.normal),
                    GestureDetector(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: ModifiedText(
                          text: 'Sign Up',
                          color: Colors.red,
                          size: 14,
                          fontWeight: FontWeight.normal),
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
