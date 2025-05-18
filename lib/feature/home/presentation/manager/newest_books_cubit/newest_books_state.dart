part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {
  const NewestBooksState();
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess({required this.books});
}

final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  const NewestBooksFailure({required this.errorMessage});
}
