import 'package:flutter/material.dart';

import '../../../res/components/text.dart';

class TextTitle extends StatelessWidget {
  final String mediumTitle;
  final String smallTitle;
  final VoidCallback onPress;

  const TextTitle({
    super.key,
    required this.mediumTitle,
    required this.smallTitle,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ModifiedText(
            text: mediumTitle,
            color: Colors.white,
            size: 18,
            fontWeight: FontWeight.normal),
        GestureDetector(
          onTap: onPress,
          child: ModifiedText(
              text: smallTitle,
              color: Colors.white,
              size: 14,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
