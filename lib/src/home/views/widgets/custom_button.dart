import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.onPressed,
    required this.icon,
    super.key,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 12,
        ),
        backgroundColor: const Color.fromRGBO(47, 47, 47, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Text(title),
          const Spacing(
            size: SpacingSize.tiny,
            isVertical: false,
          ),
          Icon(
            icon,
            size: 12,
          ),
        ],
      ),
    );
  }
}
