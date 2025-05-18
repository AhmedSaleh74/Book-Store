import 'package:bookly_app/feature/search/presentation/screens/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/theming/styles.dart';
import 'custom_search_text_field.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(),
              SizedBox(height: 32),
              Text('Search Result', style: TextStyles.font18Bold),
              SizedBox(height: 16),
              Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}
