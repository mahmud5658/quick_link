import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quick_link/config/theme/dark_theme.dart';
import 'package:quick_link/config/theme/light_theme.dart';
import 'package:quick_link/routes/app_routes.dart';
import 'package:quick_link/ui/screens/onboard/splash_screen.dart';
class QuickLink extends StatelessWidget {
  const QuickLink({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.pages,
    );
  }
}