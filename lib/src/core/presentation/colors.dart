import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Primary Color of App
  static const primaryColor = Color.fromRGBO(36, 211, 181, 1);
  static const backgroundColor = Color.fromARGB(255, 237, 255, 244);

  // Light theme font colors
  static const primaryOnboardingColor = Color.fromARGB(255, 0, 83, 69);
  static const primaryLightFontColor = Colors.black;
  static const secondaryLightFontColor = Color(0xFF616161);
  static const tertiaryLightFontColor = Color(0xFF9E9E9E);
  static const floatingActionButtonLightColor =
      Color.fromARGB(255, 100, 100, 100);

  static const lightWhiteColor = Color.fromARGB(255, 230, 230, 230);

  // Dark theme font colors
  static const primaryDarkFontColor = Colors.white;
  static const secondaryDarkFontColor = Color(0xFF9E9E9E);
  static const tertiaryDarkFontColor = Color(0xFF616161);
  static const floatingActionButtonDarkColor =
      Color.fromARGB(255, 200, 200, 200);
}
