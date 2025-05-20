import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //بحد الدوال هتعمل اي بس مبقولش هتعمله ازاي
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  });
}
