import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/feature/home/presentation/screens/home_screen.dart';
import 'package:bookly_app/feature/splash/presentation/screens/splash_view.dart';
import 'package:get/get.dart';

class Pages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(name: Routes.splash, page: () => SplashView()),
    GetPage(name: Routes.home, page: () => HomeScreen()),
  ];
}
