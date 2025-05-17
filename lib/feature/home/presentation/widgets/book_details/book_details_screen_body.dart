import 'package:bookly_app/feature/home/presentation/widgets/book_details/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/widgets/book_details/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomAppBar(),
                  ),
                  BookDetailsSection(),
                  SizedBox(height: 37),
                  SimilarBooksSection(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
