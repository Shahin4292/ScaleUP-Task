import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/colors/app_colors.dart';
import '../../res/components/round_button.dart';
import '../../res/components/text.dart';
import '../../viewModel/forget_controller/forget_controller.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  ForgetController forgetController = Get.put(ForgetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 50),
        child: Form(
          key: forgetController.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              BoldText(
                  text: "Forgot Password ?", size: 30, color: Colors.white),
              ModifiedText(
                text: "No worries, we’ll send you reset instructions.",
                color: Colors.white,
                size: 14,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(
                height: 10,
              ),
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
                      child: TextFormField(
                        controller: forgetController.emailController,
                        focusNode: forgetController.emailFocusNode,
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          labelText: "Enter Your Mail Address",
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return null;
                          } else if (!GetUtils.isEmail(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.done,
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
              RoundButton(
                title: 'Get Code',
                onPress: forgetController.forgetPassword,
                height: 64,
                width: MediaQuery.sizeOf(context).width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
