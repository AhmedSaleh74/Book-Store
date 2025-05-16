import 'package:bookly_app/constant.dart';
import 'package:bookly_app/feature/home/presentation/widgets/book_image_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/theming/styles.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50),
            Text('Best Seller', style: TextStyles.font18SemiBold),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 126,
          child: BookImageCard(imagePath: kTestImage, aspectRatio: 2.5 / 4),
        ),
        Column(),
      ],
    );
  }
}
