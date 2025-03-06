import 'package:flutter/material.dart';

import '../app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: AppColors.lightSurface,
    onSurface:AppColors.lightOnSurface,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 18),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.darkTextPrimary,
      fixedSize: Size.fromWidth(double.maxFinite),
      textStyle: TextStyle(fontFamily: 'Poppins-Medium'),
    ),
  )
);
