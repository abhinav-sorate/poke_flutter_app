import 'package:flutter/material.dart';
import 'package:poke_flutter_app/core/app_colors.dart';

final ColorScheme appColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary,
  onPrimary: AppColors.white,
  secondary: AppColors.secondary,
  onSecondary: AppColors.white,
  surface: AppColors.card,
  onSurface: AppColors.text,
  error: AppColors.error,
  onError: AppColors.white,
);

class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
}

class AppRadius {
  static const double sm = 4;
  static const double md = 8;
  static const double lg = 12;
  static const double xl = 16;
  static const double round = 9999;
}

class AppFontSize {
  static const double xs = 10;
  static const double sm = 12;
  static const double md = 14;
  static const double lg = 16;
  static const double xl = 18;
  static const double xxl = 20;
  static const double xxxl = 24;
  static const double huge = 32;
}

class AppFontWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

final ThemeData appTheme = ThemeData(
  colorScheme: appColorScheme,
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.textSecondary,
    backgroundColor: AppColors.white,
  ),
  cardColor: AppColors.card,

  textTheme: TextTheme(
    labelSmall: TextStyle(
      fontSize: AppFontSize.xs,
      fontWeight: AppFontWeight.medium,
      color: AppColors.textLight,
    ),
    labelMedium: TextStyle(
      fontSize: AppFontSize.xs,
      fontWeight: AppFontWeight.bold,
      color: AppColors.white,
      letterSpacing: 0.5,
    ),
    labelLarge: TextStyle(
      fontSize: AppFontSize.md,
      fontWeight: AppFontWeight.bold,
      color: AppColors.text,
    ),
  ),
);
