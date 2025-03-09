import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quick_link/config/assets_path.dart';
import 'package:quick_link/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSplashContent(context),
    );
  }
  Widget _buildSplashContent(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          _buildAppLogo(screenHeight, screenWidth),
          const SizedBox(height: 20),
          _buildAppTitle(context, screenWidth),
          const Spacer(),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }

  Widget _buildAppLogo(double screenHeight, double screenWidth) {
    return SvgPicture.asset(
      AssetsPath.appLogo,
      height: screenHeight * 0.2,
      width: screenWidth * 0.4,
    );
  }
  Widget _buildAppTitle(BuildContext context, double screenWidth) {
    return Text(
      'Quick Link',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: screenWidth * 0.08),
    );
  }
  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 10));
    Get.offNamed(AppRoutes.start);
  }
}
