import 'package:flutter/material.dart';

import '../app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkOnSurface,
  ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
        color: Colors.white
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
        textStyle: TextStyle(fontFamily: 'Poppins-Medium'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      ),
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(fontFamily: 'Poppins-Bold'),
        titleMedium: TextStyle(fontFamily: 'Poppins-Medium'),
      bodyLarge: TextStyle(fontFamily: 'Poppins-Medium'),
    )
);
