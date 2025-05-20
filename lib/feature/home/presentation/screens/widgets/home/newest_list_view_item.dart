import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../constant.dart';
import '../../../../../../core/utils/routing/app_routes.dart';
import '../../../../../../core/utils/theming/styles.dart';
import '../book_image_card.dart';
import '../book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToBookDetailsScreen(context);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 126,
            child: BookImageCard(imageURL: kTestImage, aspectRatio: 2.5 / 4),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    style: TextStyles.font20Regular,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  'J.K. Rowling',
                  style: TextStyles.font14Regular,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('19.99 EG', style: TextStyles.font20Bold),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToBookDetailsScreen(BuildContext context) =>
      context.push(AppRoutes.kBookDetails);
}
