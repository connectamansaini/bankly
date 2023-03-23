import 'package:bankly/src/core/presentation/colors.dart';
import 'package:flutter/material.dart';

class BackButtonAppBar extends StatelessWidget {
  const BackButtonAppBar({
    required this.onPressed,
    super.key,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Center(
        child: SizedBox(
          height: 40,
          width: 40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primaryColor, width: 0.5),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
