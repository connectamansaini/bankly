import 'package:bankly/src/core/presentation/theme.dart';
import 'package:bankly/src/onboarding/views/starting_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          home: const StartingScreen(),
        );
      },
    );
  }
}
