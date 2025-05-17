import 'package:bookly_app/feature/home/presentation/widgets/book_image_card.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class SimilarItem extends StatelessWidget {
  const SimilarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: BookImageCard(imagePath: kTestImage),
    );
  }
}
