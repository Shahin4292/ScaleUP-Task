import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  final VoidCallback onPress;
  final String image;

  const IconBox({
    super.key,
    required this.onPress,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Image.asset(
            image,
            height: 24,
            width: 24,
          ),
        ),
      ),
    );
  }
}
