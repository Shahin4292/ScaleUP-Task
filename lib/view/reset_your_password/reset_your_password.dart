import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/view/reset_your_password/widget/confirm_reset_password.dart';
import 'package:scale_up_task/view/reset_your_password/widget/new_reset_password.dart';

import '../../res/components/round_button.dart';
import '../../res/components/text.dart';
import '../../viewModel/reset_password_controller/reset_password_controller.dart';

class ResetYourPasswordScreen extends StatelessWidget {
  ResetYourPasswordScreen({super.key});

  ResetPasswordController resetYourPasswordController =
      Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 50),
        child: Form(
          key: resetYourPasswordController.formKey,
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoldText(
                  text: "Forgot Password ?", size: 30, color: Colors.white),
              ModifiedText(
                text:
                    "Vulputate massa in libero diam commodo lorem platea sagittis lectus. Volutpat tristique enim risus blandit sit.",
                color: Colors.white,
                size: 14,
                fontWeight: FontWeight.normal,
              ),
              NewResetPassword(
                resetPasswordController: resetYourPasswordController,
              ),
              ConfirmResetPassword(
                resetPasswordController: resetYourPasswordController,
              ),
              RoundButton(
                title: 'Reset Now',
                onPress: resetYourPasswordController.resetPassword,
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
