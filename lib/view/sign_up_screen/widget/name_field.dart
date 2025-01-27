import 'package:flutter/material.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/sign_up_controller/sign_up_controller.dart';

class NameFieldInput extends StatelessWidget {
  const NameFieldInput({
    super.key,
    required this.signUpController,
  });

  final SignUpController signUpController;

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
              controller: signUpController.nameController,
              focusNode: signUpController.nameFocusNode,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                labelText: "User name",
                labelStyle: TextStyle(
                    color: AppColor.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
                hintText: "Name",
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context)
                    .requestFocus(signUpController.emailFocusNode);
              },
            ),
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
