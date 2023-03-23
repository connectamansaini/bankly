import 'package:bankly/src/auth/views/otp_view.dart';
import 'package:bankly/src/core/domain/string_constants.dart';
import 'package:bankly/src/core/presentation/colors.dart';
import 'package:bankly/src/core/presentation/theme.dart';
import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:bankly/src/onboarding/views/widgets/primary_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    StringConstants.logo,
                    height: 8.h,
                  ),
                ),
              ),
              Text(
                'Enter your phone number',
                style: Theme.of(context)
                    .smallTitlePrimaryTextStyle
                    .copyWith(color: const Color.fromRGBO(99, 111, 140, 1)),
              ),
              const Spacing(size: SpacingSize.tiny),
              Text(
                'Make sure to provide your own number.',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: const Color.fromRGBO(99, 111, 140, 1)),
              ),
              const Spacing(
                size: SpacingSize.medium,
              ),
              TextField(
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(18),
                  hintText: '+91 00000 00000',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(144, 158, 192, 0.3),
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(144, 158, 192, 0.1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const Spacing(),
              RichText(
                text: TextSpan(
                  text: 'By continuing, you agree to our',
                  style: const TextStyle(
                    color: Color.fromRGBO(144, 158, 192, 1),
                    fontSize: 16,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms of use',
                      style: const TextStyle(
                        color: Color.fromRGBO(36, 211, 181, 1),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                        },
                    ),
                    const TextSpan(text: ' and'),
                    TextSpan(
                      text: ' Privacy Policy',
                      style: const TextStyle(
                        color: Color.fromRGBO(36, 211, 181, 1),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                        },
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2),
              Hero(

                tag: 'login_button',
                child: PrimaryButton(
                  label: 'Get OTP',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const OtpView(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
