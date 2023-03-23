import 'dart:async';

import 'package:bankly/src/core/domain/string_constants.dart';
import 'package:bankly/src/onboarding/views/onboarding_view.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> topOffset;
  late Animation<Offset> bottomOffset;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    topOffset = Tween<Offset>(
      begin: const Offset(0.5, -0.5),
      end: const Offset(0.25, -0.25),
    ).animate(controller);
    bottomOffset = Tween<Offset>(
      begin: const Offset(-0.5, 0),
      end: Offset.zero,
    ).animate(controller);

    controller.forward();

    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(builder: (context) => const Onboarding()),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(StringConstants.logo),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SlideTransition(
              position: topOffset,
              child: const Image(
                image: AssetImage('assets/starting_screen/top_ellipse.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SlideTransition(
              position: bottomOffset,
              child: const Image(
                image: AssetImage('assets/starting_screen/bottom_ellipse.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
