/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeAppBarImage extends StatelessWidget {
  final String image;

  const HomeAppBarImage({required this.image, super.key});

  @override
  Widget build(BuildContext context) => Container(
        foregroundDecoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
        ),
        child: CachedNetworkImage(
          imageUrl: image.isNotEmpty
              ? image
              : "https://styles.redditmedia.com/t5_2x3q8/styles/bannerBackgroundImage_ih7a660qvyv31.png?width=4000&s=7b03ca591f42eaa0459d521a2a395a32f0f37730",
          fit: BoxFit.cover,
        ),
      );
}
