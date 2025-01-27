import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/components/text.dart';

import '../../viewModel/sign_up_controller/sign_up_controller.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController signUpController = Get.put(SignUpController());

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(text: "Sign Up", size: 30, color: Colors.white),
            ModifiedText(
              text:"Integer ultricies dolor enim id sed pulvinar sagittis in. Morbi venenatis nunc turpis morbi. Vitae ullamcorper vehicula praesent lorem.",
              color: Colors.white,
              size: 13,
              fontWeight: FontWeight.normal,),
          ],
        ),
      ),
    );
  }
}
