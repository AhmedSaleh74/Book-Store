import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: '19.99 EG',
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
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
