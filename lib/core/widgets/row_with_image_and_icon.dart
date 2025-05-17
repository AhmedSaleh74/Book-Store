import 'package:bookly_app/core/widgets/custom_asset_image.dart';
import 'package:flutter/material.dart';

class RowWithImageAndIcon extends StatelessWidget {
  const RowWithImageAndIcon({
    super.key,
    required this.imagePath,
    required this.iconPath,
    this.onIconTap,
    this.width,
    this.height,
  });
  final String imagePath;
  final String iconPath;
  final double? width;
  final double? height;
  final VoidCallback? onIconTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAssetImage(
          pathImage: imagePath,
          width: width ?? 60,
          height: height ?? 60,
        ),
        IconButton(
          onPressed: onIconTap,
          icon: CustomAssetImage(
            pathImage: iconPath,
            width: width ?? 20,
            height: height ?? 20,
          ),
          splashRadius: 24,
        ),
      ],
    );
  }
}
