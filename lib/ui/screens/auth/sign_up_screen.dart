import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_link/config/app_colors.dart';
import 'package:quick_link/routes/app_routes.dart';
import '../../widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            const CustomTextField(hintText: 'Name', icon: Icons.person_outline),
            SizedBox(height: size.height * 0.03),
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
            _buildSignUpButton(),
            SizedBox(height: size.height * 0.03),
            _buildLoginRedirect(context),
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
          'Create Your Account',
          style: textTheme.titleLarge?.copyWith(fontSize: size.width * 0.07, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          'Join us today and enjoy personalized features. Let’s get you started!',
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

  Widget _buildSignUpButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Sign Up'),
      ),
    );
  }

  Widget _buildLoginRedirect(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Have an account? ',
          style: Theme.of(context).textTheme.bodyLarge,
          children: [
            TextSpan(
              text: 'Login',
              style:  TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                Get.toNamed(AppRoutes.login);
                },
            ),
          ],
        ),
      ),
    );
  }
}
