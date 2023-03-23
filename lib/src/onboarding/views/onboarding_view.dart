import 'package:bankly/src/auth/views/login_view.dart';
import 'package:bankly/src/core/domain/string_constants.dart';
import 'package:bankly/src/core/presentation/colors.dart';
import 'package:bankly/src/onboarding/views/widgets/back_button_app_bar.dart';
import 'package:bankly/src/onboarding/views/widgets/onboarding_page.dart';
import 'package:bankly/src/onboarding/views/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController = PageController();

  var _index = 0;

  final List<OnboardingData> _list = const [
    OnboardingData(
      title: StringConstants.titlePage1,
      subtitle: StringConstants.subtitlePage1,
      imageName: StringConstants.imageName1,
    ),
    OnboardingData(
      title: StringConstants.titlePage2,
      subtitle: StringConstants.subtitlePage2,
      imageName: StringConstants.imageName2,
    ),
    OnboardingData(
      title: StringConstants.titlePage3,
      subtitle: StringConstants.subtitlePage3,
      imageName: StringConstants.imageName3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 80,
        toolbarHeight: 70,
        leading: _index != 0
            ? BackButtonAppBar(
                onPressed: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.linear,
                  );
                },
              )
            : null,
        actions: [
          if (_index != (_list.length - 1))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              child: SkipButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            _index = value;
          });
        },
        children: _list
            .map(
              (data) => OnboardingPage(
                title: data.title,
                subTitle: data.subtitle,
                imageName: data.imageName,
                buttonLabel: _index == (_list.length - 1) ? 'Login' : 'Next',
                onPressed: () {
                  if (_index == (_list.length - 1)) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const LoginView(),
                      ),
                    );
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linear,
                    );
                  }
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

class OnboardingData {
  const OnboardingData({
    required this.title,
    required this.subtitle,
    required this.imageName,
  });

  final String title;
  final String subtitle;
  final String imageName;
}
