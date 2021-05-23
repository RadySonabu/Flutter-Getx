import 'package:app/features/public/login/login.dart';
import 'package:app/features/public/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static var route = [
    GetPage(name: '/splash', page: () => SplashScreen()),
    GetPage(name: '/login', page: () => LoginPage()),
  ];
}
