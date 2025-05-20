import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../core/models/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksInitial());
    final featuredBooksResult = await homeRepo.fetchFeaturedBooks();
    featuredBooksResult.fold(
      (failure) =>
          emit(FeaturedBooksFailure(errorMessage: failure.errorMessage)),
      (featuredBooks) => emit(FeaturedBooksSuccess(books: featuredBooks)),
    );
  }
}
