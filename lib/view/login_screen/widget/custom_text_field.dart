import 'package:flutter/material.dart';

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
    );
  }
}