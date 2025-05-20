import 'package:bookly_app/core/utils/functions/launcher_url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../core/utils/theming/styles.dart';
import '../../../../../../core/models/book_model.dart';
import '../book_image_card.dart';
import '../book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.26,
          ),
          child: BookImageCard(
            imageURL:
                bookModel.volumeInfo?.imageLinks?.thumbnail ??
                'https://via.placeholder.com/150',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo?.title ?? 'No Title',
          style: TextStyles.font30Bold,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          (bookModel.volumeInfo?.authors?.isNotEmpty ?? false)
              ? bookModel.volumeInfo!.authors!.first
              : 'Unknown Author',
          style: TextStyles.font18Regular.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(.7),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: BooksAction(
            onTapOnFreePreview: () {
              final previewLink = bookModel.volumeInfo?.previewLink;
              if (previewLink != null) {
                customLauncherUrl(context, imgUrl: previewLink);
              }
            },
          ),
        ),
      ],
    );
  }
}
