import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/theming/styles.dart';
import '../book_image_card.dart';
import '../book_rating.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
