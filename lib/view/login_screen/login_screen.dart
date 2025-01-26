import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/assets/app_assets.dart';
import 'package:scale_up_task/res/colors/app_colors.dart';
import 'package:scale_up_task/res/components/text.dart';

import '../../res/components/round_button.dart';
import '../../viewModel/login_controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
              spacing: 20,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: loginController.emailController,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            labelText: "Mail Address",
                            labelStyle: TextStyle(
                                color: AppColor.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                            hintText: "yourmail@gmail.com",
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => Container(
                    height: 60,
                    width: MediaQuery.sizeOf(context).width,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: loginController.passwordController,
                            obscureText: loginController.isPasswordHidden.value,
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: AppColor.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                              hintText: "********",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: loginController.togglePasswordVisibility,
                          child: Icon(
                            loginController.isPasswordHidden.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                  // onTap: loginController.navigateToSignUp,
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
    );
  }
}
