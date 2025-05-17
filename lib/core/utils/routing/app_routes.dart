import 'package:go_router/go_router.dart';

import '../../../feature/home/presentation/screens/home_screen.dart';
import '../../../feature/splash/presentation/screens/splash_view.dart';

abstract class AppRoutes {
  static const kSplash = '/';
  static const kHome = '/home';
  static final GoRouter router = GoRouter(
    initialLocation: kSplash,
    routes: [
      GoRoute(path: kSplash, builder: (context, state) => const SplashView()),
      GoRoute(path: kHome, builder: (context, state) => const HomeScreen()),
    ],
  );
}
