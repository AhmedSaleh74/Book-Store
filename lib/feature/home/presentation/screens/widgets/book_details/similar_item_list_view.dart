import 'package:bookly_app/core/widgets/error_text_widget.dart';
import 'package:bookly_app/core/widgets/loading_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/similar_books_cubit/similar_books_cubit.dart';
import '../book_image_card.dart';

class SimilarItemListView extends StatelessWidget {
  const SimilarItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: ListView.builder(
              padding: const EdgeInsets.only(right: 4.0),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final String? imgUrl =
                    state.books[index].volumeInfo?.imageLinks?.thumbnail;
                return BookImageCard(imageURL: '$imgUrl');
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorTextWidget(errorMessage: state.errorMessage);
        } else {
          return const LoadingIndicatorWidget();
        }
      },
    );
  }
}
