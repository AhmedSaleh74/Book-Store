import 'package:bookly_app/feature/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/feature/home/presentation/manager/featured_book_cubilt/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/routing/app_routes.dart';
import 'core/utils/service_locator.dart';
import 'core/utils/theming/colors.dart';
import 'feature/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => FeaturedBooksCubit(
                homeRepo: getIt.get<HomeRepoImplementation>(),
              )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) => NewestBooksCubit(
                homeRepo: getIt.get<HomeRepoImplementation>(),
              )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorsManager.kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
