import 'package:flutter/cupertino.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 25,
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
          ],
        ),
      ),
    );
  }
}
