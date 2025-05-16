import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/widgets/row_with_image_and_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RowWithImageAndIcon(
      imagePath: kLogo,
      iconPath: kSearchIcon,
      onIconTap: () {},
    );
  }
}
