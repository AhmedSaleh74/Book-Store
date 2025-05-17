import 'package:flutter/material.dart';

import '../../../../../core/utils/theming/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Text(
                'Best Seller',
                style: TextStyles.font18SemiBold,
                maxLines: 2,
              ),
              SizedBox(height: 20),
              BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}
