import 'package:get/get.dart';
import 'package:quick_link/ui/screens/onboard/get_start_screen.dart';
import 'package:quick_link/ui/screens/onboard/splash_screen.dart';
class AppRoutes{
  static const String splash = '/splash_screen';
  static const String home = '/home';
  static const String start = '/get_start_screen';
  static final List<GetPage> pages = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: start, page: () => GetStartScreen()),
  ];
}