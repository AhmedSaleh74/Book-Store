import 'package:bookly_app/feature/home/data/models/book_model.dart';

abstract class HomeRepo {
  //بحد الدوال هتعمل اي بس مبقولش هتعمله ازاي
  Future<List<BookModel>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchBestSellerBooks();
}
