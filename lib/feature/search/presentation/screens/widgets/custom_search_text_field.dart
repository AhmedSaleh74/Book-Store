import 'package:bookly_app/feature/search/presentation/manager/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constant.dart';
import '../../../../../core/widgets/custom_asset_image.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  final TextEditingController queryCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: queryCont,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            if (queryCont.text.isNotEmpty) {
              Future.delayed(Duration.zero, () {
                BlocProvider.of<SearchCubit>(
                  context,
                ).fetchSuggestedBooks(query: queryCont.text);
              });
            }
          },
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
