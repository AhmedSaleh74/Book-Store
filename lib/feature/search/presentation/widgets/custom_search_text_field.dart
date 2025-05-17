import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/widgets/custom_asset_image.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: CustomAssetImage(pathImage: kSearchIcon, width: 14, height: 14),
        ),
        hintText: 'Search here',
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white.withOpacity(.5)),
    );
  }
}
