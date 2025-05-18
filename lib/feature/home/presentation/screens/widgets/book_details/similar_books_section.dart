import 'package:bookly_app/feature/home/presentation/screens/widgets/book_details/similar_item_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/theming/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('You can also like', style: TextStyles.font14SemiBold),
          const SizedBox(height: 18),
          const SimilarItemListView(),
        ],
      ),
    );
  }
}
