import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo {
  final ApiService apiService;
  SearchRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchSuggestedBooks({
    required final String query,
  }) async {
    final List<BookModel> books = [];
    try {
      final data = await apiService.get(
        endPoint: 'volumes?q=$query&printType=books&filter=free-ebooks',
      );
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
