import 'package:get/get.dart';
import 'package:quick_link/ui/screens/auth/login_screen.dart';
import 'package:quick_link/ui/screens/auth/sign_up_screen.dart';
import 'package:quick_link/ui/screens/home/home_screen.dart';
import 'package:quick_link/ui/screens/onboard/get_start_screen.dart';
import 'package:quick_link/ui/screens/onboard/splash_screen.dart';
class AppRoutes{
  static const String splash = '/splash_screen';
  static const String start = '/get_start_screen';
  static const String login = '/login_screen';
  static const String signUp = '/sign_up_screen';
  static const String home = '/home_screen';

  static final List<GetPage> pages = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: start, page: () => GetStartScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: home, page: () => HomeScreen()),
  ];
}