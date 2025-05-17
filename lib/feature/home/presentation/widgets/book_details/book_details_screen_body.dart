import 'package:bookly_app/feature/home/presentation/widgets/book_details/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(children: [CustomAppBar()]),
      ),
    );
  }
}
