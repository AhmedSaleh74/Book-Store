import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/widgets/row_with_image_and_icon.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [CustomAppBar()]));
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
