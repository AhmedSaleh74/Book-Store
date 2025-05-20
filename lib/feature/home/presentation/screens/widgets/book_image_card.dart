import 'package:bookly_app/core/widgets/loading_indicator_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImageCard extends StatelessWidget {
  final String imageURL;
  final double aspectRatio;
  final double borderRadius;
  final BoxFit fit;

  const BookImageCard({
    super.key,
    required this.imageURL,
    this.aspectRatio = 2.8 / 4,
    this.borderRadius = 16.0,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: CachedNetworkImage(
            imageUrl: imageURL,
            fit: fit,
            placeholder:
                (context, url) => const Center(child: LoadingIndicatorWidget()),
            errorWidget:
                (context, url, error) => const Center(child: Icon(Icons.error)),
          ),
        ),
      ),
    );
  }
}
