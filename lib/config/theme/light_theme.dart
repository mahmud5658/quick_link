import 'package:flutter/material.dart';

import '../app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: AppColors.lightSurface,
    onSurface:AppColors.lightOnSurface,
  ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary,width: 2),
          borderRadius: BorderRadius.circular(15)
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary,width: 2),
          borderRadius: BorderRadius.circular(15)
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary,width: 2),
          borderRadius: BorderRadius.circular(15)
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primary,
    ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 18),
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.darkTextPrimary,
      fixedSize: Size.fromWidth(double.maxFinite),
      textStyle: TextStyle(fontFamily: 'Poppins-Medium',fontSize: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
    ),
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.primary
  ),

  textTheme: TextTheme(
    titleLarge: TextStyle(fontFamily: 'Poppins-Bold'),
    titleMedium: TextStyle(fontFamily: 'Poppins-Medium'),
    bodyLarge: TextStyle(fontFamily: 'Poppins-Medium'),
  )
);
