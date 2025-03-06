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
    _moveToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsPath.appLogo,
              height: screenHeight * 0.2,
              width: screenWidth * 0.4,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Quick Link',
              style: TextStyle(
                fontSize: screenWidth * 0.08,
                fontFamily: 'Poppins-Bold',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _moveToNextScreen()async{
    await Future.delayed(Duration(seconds: 10));
    Get.toNamed(AppRoutes.start);
  }
}
