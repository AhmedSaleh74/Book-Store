import 'package:flutter/material.dart';

import '../../../../../core/utils/theming/styles.dart';

class InitialEmptyWidget extends StatelessWidget {
  const InitialEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.menu_book, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            "Start exploring books!",
            style: TextStyles.font18Bold.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 8),
          Text(
            "Search for your favorite title or author.",
            style: TextStyles.font14SemiBold.copyWith(color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
