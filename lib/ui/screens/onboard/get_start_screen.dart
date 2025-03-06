import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_link/config/assets_path.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: SvgPicture.asset(
                    AssetsPath.onBoardLogo,
                    width: size.width * 0.6,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'Connect easily with your family and friends over countries',
                  style: TextStyle(
                    fontSize: 18 * textScaleFactor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.05),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Terms & Privacy Policy',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Start Messaging',
                  ),
                ),
                const Spacer(), // Helps maintain spacing across devices
              ],
            ),
          ),
        ),
      ),
    );
  }
}
