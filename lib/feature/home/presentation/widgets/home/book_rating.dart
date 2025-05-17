import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/theming/styles.dart';
import '../../../../../core/widgets/custom_asset_image.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          const CustomAssetImage(pathImage: kStarIcon, width: 16, height: 16),
          const SizedBox(width: 6.3),
          const Text('4.8', style: TextStyles.font16Medium),
          const SizedBox(width: 5),
          Text(
            '(245)',
            style: TextStyles.font14Regular.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
