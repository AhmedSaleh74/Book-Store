import 'package:bookly_app/core/widgets/error_text_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator_widget.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return ErrorTextWidget(errorMessage: state.errorMessage);
        } else if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else {
          return LoadingIndicatorWidget();
        }
      },
    );
  }
}
