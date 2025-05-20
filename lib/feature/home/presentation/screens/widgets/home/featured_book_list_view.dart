import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/error_text_widget.dart';
import '../../../../../../core/widgets/loading_indicator_widget.dart';
import '../../../manager/featured_book_cubilt/featured_books_cubit.dart';
import '../book_image_card.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksFailure) {
          return ErrorTextWidget(errorMessage: state.errorMessage);
        } else if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.35,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BookImageCard(
                  imageURL:
                      '${state.books[index].volumeInfo?.imageLinks?.smallThumbnail}',
                );
              },
            ),
          );
        } else {
          return LoadingIndicatorWidget();
        }
      },
    );
  }
}
