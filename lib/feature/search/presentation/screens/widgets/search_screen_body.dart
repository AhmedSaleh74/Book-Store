import 'package:bookly_app/feature/search/presentation/screens/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/theming/styles.dart';
import 'custom_search_text_field.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              const SizedBox(height: 32),
              const Text('Search Result', style: TextStyles.font18Bold),
              const SizedBox(height: 16),
              const Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}
