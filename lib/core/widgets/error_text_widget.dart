import 'package:bookly_app/core/utils/theming/styles.dart';
import 'package:flutter/material.dart';

class ErrorTextWidget extends StatelessWidget {
  final String errorMessage;

  const ErrorTextWidget({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: TextStyles.font18Medium.copyWith(color: Colors.red),
      ),
    );
  }
}
