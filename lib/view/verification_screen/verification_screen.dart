import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
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
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BoldText(
                text: "Enter Your Verification\nCode",
                size: 30,
                color: Colors.white),
            SizedBox(height: 10),
            Text(
              "Please enter the 4-digit code sent to your email. If you didn’t receive it, you can resend.",
              style: TextStyle(
                color: AppColor.greyShade,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 4,
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              filled: true,
              fillColor: Color(0xFF1C212A),
              enabledBorderColor: Colors.transparent,
              textStyle: TextStyle(color: Colors.white, fontSize: 20),
              focusedBorderColor: Colors.transparent,
              disabledBorderColor: Color(0xFF222222),
              showFieldAsBox: false,
              onSubmit: (code) => controller.otpCode.value = code, // Store OTP
            ),
            SizedBox(height: 10),
            Obx(() => controller.errorMessage.value.isNotEmpty
                ? Text(
              controller.errorMessage.value,
              style: TextStyle(color: Colors.red, fontSize: 14),
            )
                : SizedBox()),
            Obx(() => Text(
              controller.resendTime.value > 0
                  ? "Resend Code in ${controller.resendTime.value} Sec."
                  : "Resend Code",
              style: TextStyle(color: Colors.white),
            )),
            GestureDetector(
              onTap: controller.verifyOTP,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 64,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Verify Now",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
