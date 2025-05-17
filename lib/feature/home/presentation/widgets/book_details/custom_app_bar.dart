import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/widgets/row_with_image_and_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RowWithImageAndIcon(
      imagePath: kXIcon,
      iconPath: kBasketIcon,
      width: 20,
      height: 20,
      onIconTap: () {},
    );
  }
}
