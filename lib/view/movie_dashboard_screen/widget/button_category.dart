import 'package:flutter/material.dart';

class ButtonCategory extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ButtonCategory({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(left: 14, right: 14,top: 8, bottom: 8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.red : Color(0xFF221821),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.white : Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
