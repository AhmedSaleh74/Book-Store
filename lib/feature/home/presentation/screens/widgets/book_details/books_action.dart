import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.onTapOnFreePreview});
  final VoidCallback onTapOnFreePreview;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Free',
            btnBackgroundColor: Colors.white,
            topLeftRadius: 16,
            bottomLeftRadius: 16,
            onTap: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free preview',
            btnBackgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            topRightRadius: 16,
            bottomRightRadius: 16,
            onTap: onTapOnFreePreview,
          ),
        ),
      ],
    );
  }
}
