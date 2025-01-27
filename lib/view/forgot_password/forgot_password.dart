import 'package:flutter/material.dart';

import '../../res/components/text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            BoldText(text: "Forgot Password ?", size: 30, color: Colors.white),
            ModifiedText(
              text: "No worries, we’ll send you reset instructions.",
              color: Colors.white,
              size: 14,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
