import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/login_controller/login_controller.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    super.key,
    required this.loginController,
  });

  final LoginController loginController;

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
    );
  }
}
