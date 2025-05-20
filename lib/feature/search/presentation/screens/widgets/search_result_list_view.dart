import 'package:bookly_app/core/widgets/error_text_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator_widget.dart';
import 'package:bookly_app/feature/home/presentation/screens/widgets/home/newest_list_view_item.dart';
import 'package:bookly_app/feature/search/presentation/manager/search_cubit.dart';
import 'package:bookly_app/feature/search/presentation/screens/widgets/initial_empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                // child: BookListViewItem(),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return ErrorTextWidget(errorMessage: state.errorMessage);
        } else if (state is SearchLoading) {
          return const LoadingIndicatorWidget();
        } else {
          return const InitialEmptyWidget();
        }
      },
    );
  }
}
