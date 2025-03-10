import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quick_link/config/assets_path.dart';
import 'package:quick_link/routes/app_routes.dart';

import '../../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(textTheme, size),
            SizedBox(height: size.height * 0.06),
            const CustomTextField(hintText: 'Email', icon: Icons.email_outlined),
            SizedBox(height: size.height * 0.03),
            CustomTextField(
              hintText: 'Password',
              icon: Icons.lock_outline,
              obscureText: _obscureText,
              suffixIcon: IconButton(
                icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: _togglePasswordVisibility,
              ),
            ),
            _buildForgotPasswordButton(),
            SizedBox(height: size.height * 0.04),
            _buildLoginButton(),
            SizedBox(height: size.height * 0.05),
            _buildDivider(textTheme, size),
            SizedBox(height: size.height * 0.03),
            _buildSocialLogin(size),
          ],
        ),
      ),
    );
  }
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
  Widget _buildHeader(TextTheme textTheme, Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back!',
          style: textTheme.titleLarge?.copyWith(fontSize: size.width * 0.07, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          'Login to your account and enjoy seamless access to your personalized experience.',
          style: textTheme.bodyMedium?.copyWith(fontSize: size.width * 0.045),
        ),
      ],
    );
  }
  Widget _buildForgotPasswordButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(AppRoutes.home);
        },
        child: const Text('Login'),
      ),
    );
  }
  Widget _buildDivider(TextTheme textTheme, Size size) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Text('Or login with', style: textTheme.titleMedium),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
  Widget _buildSocialLogin(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsPath.googleIcon, width: size.width * 0.10),
        SizedBox(width: size.width * 0.08),
        SvgPicture.asset(AssetsPath.facebookIcon, width: size.width * 0.11),
      ],
    );
  }
}
