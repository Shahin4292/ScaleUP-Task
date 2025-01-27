import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/components/text.dart';

import '../../../viewModel/subscription_controller/subscription_controller.dart';

class SubscribeButton extends StatelessWidget {
  final SubscriptionController controller = Get.find();

  SubscribeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (controller.formKey.currentState!.validate()) {
            Get.snackbar(
              "Subscription",
              "Subscription Successful!",
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          minimumSize: Size(180, 64),
        ),
        child: ModifiedText(
            text: "Subscribe",
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.normal));
  }
}
