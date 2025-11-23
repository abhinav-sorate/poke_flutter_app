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
);
