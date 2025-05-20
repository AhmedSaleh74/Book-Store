import 'package:bookly_app/feature/home/presentation/screens/widgets/book_details/book_details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model.dart';
import '../manager/similar_books_cubit/similar_books_cubit.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: '${widget.bookModel.volumeInfo?.categories?.first}',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const BookDetailsScreenBody();
  }
}
