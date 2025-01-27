import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/sign_up_controller/sign_up_controller.dart';

class PasswordFieldInput extends StatelessWidget {
  const PasswordFieldInput({
    super.key,
    required this.signUpController,
  });

  final SignUpController signUpController;

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
                focusNode: signUpController.passwordFocusNode,
                controller: signUpController.passwordController,
                obscureText: signUpController.isPasswordHidden.value,
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
              onTap: signUpController.togglePasswordVisibility,
              child: Icon(
                signUpController.isPasswordHidden.value
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
