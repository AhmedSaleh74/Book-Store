import 'package:flutter/material.dart';

import '../utils/theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.btnBackgroundColor,
    this.topLeftRadius,
    this.topRightRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
    this.textColor,
    required this.onTap,
  });
  final String text;
  final Color? textColor;
  final VoidCallback onTap;
  final Color btnBackgroundColor;
  final double? topLeftRadius,
      topRightRadius,
      bottomLeftRadius,
      bottomRightRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: btnBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftRadius ?? 0),
              topRight: Radius.circular(topRightRadius ?? 0),
              bottomLeft: Radius.circular(bottomLeftRadius ?? 0),
              bottomRight: Radius.circular(bottomRightRadius ?? 0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyles.font18Bold.copyWith(
            color: textColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
