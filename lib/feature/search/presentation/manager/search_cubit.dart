import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../core/models/book_model.dart';
import '../../../home/data/repos/home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepo}) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSuggestedBooks({required String query}) async {
    emit(SearchLoading());
    final newestBookResult = await searchRepo.fetchSuggestedBooks(query: query);
    newestBookResult.fold(
      (failure) => emit(SearchFailure(errorMessage: failure.errorMessage)),
      (newestBooks) => emit(SearchSuccess(books: newestBooks)),
    );
  }
}
