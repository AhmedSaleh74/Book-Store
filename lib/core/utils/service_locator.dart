import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implement.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoImplementation>(
    SearchRepoImplementation(apiService: getIt.get<ApiService>()),
  );
}
