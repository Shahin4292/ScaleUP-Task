import 'package:flutter/material.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/login_controller/login_controller.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.loginController,
  });

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              controller: loginController.emailController,
              focusNode: loginController.emailFocusNode,
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!GetUtils.isEmail(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(loginController.passwordFocusNode);
              },
            ),
          ),
          Icon(
            Icons.mail,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}