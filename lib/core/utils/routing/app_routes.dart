import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/feature/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo_implementation.dart';
import 'package:bookly_app/feature/search/presentation/manager/search_cubit.dart';
import 'package:bookly_app/feature/search/presentation/screens/search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../models/book_model.dart';
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
      GoRoute(
        path: kBookDetails,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) => SimilarBooksCubit(
                    homeRepo: getIt.get<HomeRepoImplementation>(),
                  ),
              child: BookDetailsScreen(bookModel: state.extra as BookModel),
            ),
      ),
      GoRoute(
        path: kSearch,
        builder:
            (context, state) => BlocProvider(
              create:
                  (context) => SearchCubit(
                    searchRepo: getIt.get<SearchRepoImplementation>(),
                  ),
              child: const SearchScreen(),
            ),
      ),
    ],
  );
}
