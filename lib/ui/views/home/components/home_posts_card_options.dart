/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/models/post_model.dart';
import 'home_posts_card_options_row.dart';

class HomePostsCardOptions extends StatelessWidget {
  final Post post;

  const HomePostsCardOptions({
    required this.post,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomePostsCardOptionsRow(
              icon: Icons.arrow_circle_up,
              title: post.data.ups != 0 ? post.data.ups.toString() : "Vote",
            ),
            HomePostsCardOptionsRow(
              icon: Icons.arrow_circle_down,
              title: post.data.downs != 0 ? post.data.downs.toString() : "",
            ),
            HomePostsCardOptionsRow(
              icon: Icons.message,
              title: post.data.numComments != 0
                  ? post.data.numComments.toString()
                  : "Comment",
            ),
            const HomePostsCardOptionsRow(
              icon: Icons.share,
              title: "Share",
            ),
          ],
        ),
      );
}
