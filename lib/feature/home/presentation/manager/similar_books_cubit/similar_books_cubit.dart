import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    final newestBookResult = await homeRepo.fetchSimilarBooks(
      category: category,
    );
    newestBookResult.fold(
      (failure) =>
          emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
      (newestBooks) => emit(SimilarBooksSuccess(books: newestBooks)),
    );
  }
}
