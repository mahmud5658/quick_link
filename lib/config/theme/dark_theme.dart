import 'package:flutter/material.dart';

import '../app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkOnSurface,
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
