import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/assets/app_assets.dart';
import 'package:scale_up_task/res/colors/app_colors.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppAssets.logo,
                height: 195,
                width: 136,
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text:
                      "Welcome!\nto ",
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
          ],
        ),
      ),
    );
  }
}