/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePostCardThumbnail extends StatelessWidget {
  final String thumbnail;

  const HomePostCardThumbnail({
    required this.thumbnail,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: CachedNetworkImage(
          imageUrl: thumbnail,
          fit: BoxFit.cover,
        ),
      );
}
