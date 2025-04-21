import 'package:get/get.dart';
import 'package:style/View/Splash_screen.dart';
import 'package:style/View/login_view.dart';
// import '../views/home_view.dart'; // Create this view accordingly

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashView()),
    GetPage(name: home, page: () => LoginView()), // Implement HomeView
  ];
}
