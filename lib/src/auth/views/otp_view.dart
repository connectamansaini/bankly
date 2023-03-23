import 'package:bankly/src/core/domain/string_constants.dart';
import 'package:bankly/src/core/presentation/colors.dart';
import 'package:bankly/src/core/presentation/theme.dart';
import 'package:bankly/src/core/presentation/widgets/spacing.dart';
import 'package:bankly/src/home/views/home_view.dart';
import 'package:bankly/src/onboarding/views/widgets/back_button_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  late TextEditingController _fieldOne;
  late TextEditingController _fieldTwo;
  late TextEditingController _fieldThree;
  late TextEditingController _fieldFour;

  @override
  void initState() {
    super.initState();
    _fieldOne = TextEditingController();
    _fieldTwo = TextEditingController();
    _fieldThree = TextEditingController();
    _fieldFour = TextEditingController();
  }

  @override
  void dispose() {
    _fieldOne.dispose();
    _fieldTwo.dispose();
    _fieldThree.dispose();
    _fieldFour.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButtonAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                'Enter the otp to verify your phone Number',
                style: Theme.of(context)
                    .smallTitlePrimaryTextStyle
                    .copyWith(color: const Color.fromRGBO(99, 111, 140, 1)),
              ),
              const Spacing(size: SpacingSize.tiny),
              RichText(
                text: TextSpan(
                  text: 'OTP sent to +91 00000 0000',
                  style: const TextStyle(
                    color: Color.fromRGBO(99, 111, 140, 1),
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '  edit',
                      style: const TextStyle(
                        color: Color.fromRGBO(36, 211, 181, 1),
                        fontSize: 12,
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
              const Spacing(size: SpacingSize.medium),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EnterOtpWidget(
                    controller: _fieldOne,
                  ),
                  EnterOtpWidget(
                    controller: _fieldTwo,
                  ),
                  EnterOtpWidget(
                    controller: _fieldThree,
                  ),
                  EnterOtpWidget(
                    controller: _fieldFour,
                  ),
                ],
              ),
              const Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  const Text(
                    'Resend OTP 34s',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Hero(
                    tag: 'login_button',
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const HomeView(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EnterOtpWidget extends StatelessWidget {
  const EnterOtpWidget({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      height: 10.h,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        // maxLength: 1,
        decoration: InputDecoration(
          // counterText: '',
          contentPadding: const EdgeInsets.all(20),
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
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
