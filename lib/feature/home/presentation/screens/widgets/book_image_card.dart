import 'package:flutter/material.dart';

class BookImageCard extends StatelessWidget {
  final String imagePath;
  final double aspectRatio;
  final double borderRadius;
  final BoxFit fit;

  const BookImageCard({
    super.key,
    required this.imagePath,
    this.aspectRatio = 2.8 / 4,
    this.borderRadius = 16.0,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath), fit: fit),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
