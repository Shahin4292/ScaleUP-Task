import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/reset_password_controller/reset_password_controller.dart';

class ConfirmResetPassword extends StatelessWidget {
  const ConfirmResetPassword({
    super.key,
    required this.resetPasswordController,
  });

  final ResetPasswordController resetPasswordController;

  @override
  Widget build(BuildContext context) {
    return Obx(
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
              child: TextFormField(
                focusNode: resetPasswordController.confirmPasswordFocusNode,
                controller: resetPasswordController.confirmPasswordController,
                obscureText: resetPasswordController.confirmPasswordHidden.value,
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            GestureDetector(
              onTap: resetPasswordController.confirmPasswordVisibility,
              child: Icon(
                resetPasswordController.confirmPasswordHidden.value
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
