import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  fontFamily: 'Montserrat',
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.accent),
  scaffoldBackgroundColor: AppColors.bordersColor,
);

class AppColors {
  const AppColors._();

  static Color get accent => const Color(0xFF895835);
  static Color get myMessage => const Color(0xFFF2EEE1);
  static Color get gptMessage => const Color(0xFF895835);
  static Color get inputBox => const Color(0xFFE8E3D7);
  static Color get hintText => const Color(0x7F251F1C);
  static Color get bordersColor => const Color(0xFF3F352E);
  static Color get messagesBackground => const Color(0xFFC9B1A1);
}