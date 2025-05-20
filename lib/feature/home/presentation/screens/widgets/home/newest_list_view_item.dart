import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/routing/app_routes.dart';
import '../../../../../../core/utils/theming/styles.dart';
import '../book_image_card.dart';
import '../book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToBookDetailsScreen(context);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 126,
            child: BookImageCard(
              imageURL: '${bookModel.volumeInfo?.imageLinks?.thumbnail}',
              aspectRatio: 2.5 / 4,
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    '${bookModel.volumeInfo?.title}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font20Regular,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  '${bookModel.volumeInfo?.authors!.map((e) => e).toString()}',
                  style: TextStyles.font14Regular,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bookModel.saleInfo!.saleability ?? 'Unknown',
                      style: TextStyles.font20Bold,
                    ),
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
