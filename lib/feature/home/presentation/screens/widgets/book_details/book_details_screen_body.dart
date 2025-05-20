import 'package:bookly_app/feature/home/presentation/screens/widgets/book_details/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/routing/app_routes.dart';
import '../../../../data/models/book_model.dart';
import 'custom_app_bar.dart';
import 'books_details_section.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomAppBar(),
                  ),
                  BookDetailsSection(bookModel: bookModel),
                  const SizedBox(height: 37),
                  const SimilarBooksSection(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
