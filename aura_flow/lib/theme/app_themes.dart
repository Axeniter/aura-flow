import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemes {
  static ThemeData get light => _build(Brightness.light);
  static ThemeData get dark => _build(Brightness.dark);
  
  static ThemeData _build(Brightness b) {
    final isDark = b == Brightness.dark;
    final accent = AppColors.accent;
    return ThemeData(
      brightness: b,
      scaffoldBackgroundColor: isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      primaryColor: accent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: accent,
        brightness: b,
        surface: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
        primary: accent
      ),
    );
  }
}