import 'package:flutter/material.dart';
import 'package:scale_up_task/res/assets/app_assets.dart';

import '../../../res/colors/app_colors.dart';
import '../../../viewModel/subscription_controller/subscription_controller.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: subscriptionController.cardNumberController,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                    color: AppColor.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
                hintText: "1452 4865 9846 3659",
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Card Number cannot be empty";
                }
                if (value.length != 16) {
                  return "Card Number must be 16 digits";
                }
                return null;
              },
            ),
          ),
          Image.asset(
            AppAssets.card,
            width: 50,
            height: 27,
          ),
        ],
      ),
    );
  }
}
