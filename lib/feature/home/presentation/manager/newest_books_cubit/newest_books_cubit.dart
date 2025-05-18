import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final newestBookResult = await homeRepo.fetchNewestBooks();
    newestBookResult.fold(
      (failure) => emit(NewestBooksFailure(errorMessage: failure.errorMessage)),
      (newestBooks) => emit(NewestBooksSuccess(books: newestBooks)),
    );
  }
}
