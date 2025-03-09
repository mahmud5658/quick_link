import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quick_link/config/assets_path.dart';
import 'package:quick_link/routes/app_routes.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return _buildContent(context);
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            _buildLogo(isDarkMode, screenWidth),
            SizedBox(height: screenHeight * 0.03),
            _buildIntroText(context, screenWidth),
            const Spacer(),
            _buildFooterButtons(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
  Widget _buildLogo(bool isDarkMode, double screenWidth) {
    return SvgPicture.asset(
      isDarkMode ? AssetsPath.darkOnBoardLogo : AssetsPath.lightOnBoardLogo,
      width: screenWidth * 0.6,
    );
  }
  Widget _buildIntroText(BuildContext context, double screenWidth) {
    return Text(
      'Connect easily with your family and friends over countries',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontSize: screenWidth * 0.045,
      ),
    );
  }
  Widget _buildFooterButtons() {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: const Text('Terms & privacy policy'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.toNamed(AppRoutes.signUp);
          },
          child: const Text('Start Message'),
        ),
      ],
    );
  }
}
