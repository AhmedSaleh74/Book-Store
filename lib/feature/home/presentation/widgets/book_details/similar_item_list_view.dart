import 'package:bookly_app/feature/home/presentation/widgets/book_details/similar_item.dart';
import 'package:flutter/material.dart';

class SimilarItemListView extends StatelessWidget {
  const SimilarItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.16,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 4.0),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const SimilarItem();
        },
      ),
    );
  }
}
