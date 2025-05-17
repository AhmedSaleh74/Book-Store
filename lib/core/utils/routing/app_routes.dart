import 'package:bookly_app/feature/search/presentation/screens/search_screen.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/home/presentation/screens/book_details_screen.dart';
import '../../../feature/home/presentation/screens/home_screen.dart';
import '../../../feature/splash/presentation/screens/splash_view.dart';

abstract class AppRoutes {
  static const kSplash = '/';
  static const kHome = '/home';
  static const kBookDetails = '/bookDetails';
  static const kSearch = '/search';
  static final GoRouter router = GoRouter(
    initialLocation: kSplash,
    routes: [
      GoRoute(path: kSplash, builder: (context, state) => const SplashView()),
      GoRoute(path: kHome, builder: (context, state) => const HomeScreen()),
      GoRoute(path: kSearch, builder: (context, state) => const SearchScreen()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}
