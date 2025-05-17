import 'package:bookly_app/feature/home/presentation/widgets/book_details/books_action.dart';
import 'package:bookly_app/feature/home/presentation/widgets/book_details/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/widgets/book_details/similar_item_list_view.dart';
import 'package:bookly_app/feature/home/presentation/widgets/book_image_card.dart';
import 'package:bookly_app/feature/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/theming/styles.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.18,
                ),
                child: const BookImageCard(imagePath: kTestImage),
              ),
              const SizedBox(height: 43),
              const Text('The Jungle Book', style: TextStyles.font30Bold),
              const SizedBox(height: 6),
              Text(
                'Rudyard Kipling',
                style: TextStyles.font18Regular.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withOpacity(.7),
                ),
              ),
              const SizedBox(height: 18),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center),
              const SizedBox(height: 37),
              const BooksAction(),
              const SizedBox(height: 37),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'You can also like',
                  style: TextStyles.font14SemiBold,
                ),
              ),
              const SizedBox(height: 18),
              const Expanded(child: SimilarItemListView()),
            ],
          ),
        ),
      ),
    );
  }
}
