import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/components/text.dart';

import '../../viewModel/subscription_controller/subscription_controller.dart';

class SubscriptionScreen extends StatelessWidget {
  final SubscriptionController controller = Get.put(SubscriptionController());

  SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(
                text: "Set up Your Payment &\nBuy Subscription",
                size: 30,
                color: Colors.white),
            SizedBox(
              height: 20,
            ),
            Text(
              "Starter Plan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 10,),
            Obx(() {
              return Column(
                children: [
                  buildPlanOption("Pay Monthly", "\$2.0/ Month/ Member", 0),
                  SizedBox(height: 10),
                  buildPlanOption("Pay Monthly", "\$2.0/ Month/ Member", 1),
                ],
              );
            }),
            // Billed To
            Text(
              "Billed To",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF222222),
                hintText: "Account Name",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.person, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            // Payment Details
            Text(
              "Payment Details",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildPaymentMethod("Pay by Card", Icons.credit_card, 0),
                  buildPaymentMethod("Bank Transfer", Icons.account_balance, 1),
                ],
              );
            }),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF222222),
                hintText: "1452 4865 9846 3659",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.credit_card, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Cancel Button
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(120, 50),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                // Subscribe Button
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "Subscription",
                      "Subscription Successful!",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size(150, 50),
                  ),
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
