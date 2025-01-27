import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/colors/app_colors.dart';
import 'package:scale_up_task/res/components/text.dart';

import '../../viewModel/verification_controller/verification_controller.dart';

class VerificationScreen extends StatelessWidget {
  final VerificationController controller = Get.put(VerificationController());

  VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111111), // Dark background
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(
                text: "Enter Your Verification\nCode",
                size: 30,
                color: Colors.white),
            Text(
              "Please enter the 4-digit code sent to your email. If you didn’t receive it, you can resend.",
              style: TextStyle(
                color: AppColor.greyShade,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    controller: controller.codeControllers[index],
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        if (index < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                      } else {
                        if (index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      }
                      controller.validateInput();
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      filled: true,
                      fillColor: Color(0xFF222222),
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
                );
              }),
            ),
            SizedBox(height: 20),
            // Resend Text
            Text(
              "Resend Code in 10 Sec.",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 30),
            // Verify Now Button
            Obx(() {
              return ElevatedButton(
                onPressed: controller.isButtonEnabled.value
                    ? controller.verifyCode
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: controller.isButtonEnabled.value
                      ? Colors.redAccent
                      : Colors.grey.shade800,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "Verify Now",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
