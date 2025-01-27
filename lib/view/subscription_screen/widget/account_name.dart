import 'package:flutter/material.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/subscription_controller/subscription_controller.dart';

class AccountName extends StatelessWidget {
  const AccountName({
    super.key,
    required this.subscriptionController,
  });

  final SubscriptionController subscriptionController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: subscriptionController.accountNameController,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                labelText: "Account Name",
                labelStyle: TextStyle(
                    color: AppColor.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
                hintText: "Rafsan Jany",
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                border: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Account Name cannot be empty";
                }
                return null;
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
