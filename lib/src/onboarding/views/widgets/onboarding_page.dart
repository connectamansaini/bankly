import 'package:bankly/src/core/presentation/colors.dart';
import 'package:bankly/src/core/presentation/theme.dart';
import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:bankly/src/onboarding/views/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.title,
    required this.subTitle,
    required this.imageName,
    required this.onPressed,
    this.buttonLabel = 'Next',
    super.key,
  });
  final String title;
  final String subTitle;
  final String imageName;
  final VoidCallback onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Image.asset(imageName),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).largeTitlePrimaryTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryOnboardingColor,
                ),
          ),
          const Spacing(),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 18,
                  color: AppColors.primaryOnboardingColor,
                ),
          ),
          Expanded(
            child: Center(
              child: PrimaryButton(
                label: buttonLabel,
                onPressed: onPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
