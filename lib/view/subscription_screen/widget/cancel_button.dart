import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/components/text.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1c212A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: Size(150, 64),
      ),
      child: ModifiedText(
          text: "Cancel",
          color: Colors.white,
          size: 20,
          fontWeight: FontWeight.normal)
    );
  }
}