/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePostCardThumbnail extends StatelessWidget {
  final String thumbnail;

  const HomePostCardThumbnail({
    super.key,
    required this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        imageUrl: thumbnail,
        fit: BoxFit.cover,
      ),
    );
  }
}
