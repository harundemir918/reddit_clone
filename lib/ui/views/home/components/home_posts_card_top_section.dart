/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/models/post_model.dart';
import '../../../../core/utils/utils.dart';
import 'home_posts_card_category.dart';
import 'home_posts_card_thumbnail.dart';
import 'home_posts_card_title.dart';

class HomePostsCardTopSection extends StatelessWidget {
  final Post post;

  const HomePostsCardTopSection({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePostsCardTitle(title: post.data.title),
              HomePostsCardCategory(
                category: post.data.linkFlairText,
                color: Utils.hexToColor(post.data.linkFlairBackgroundColor),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: HomePostCardThumbnail(thumbnail: post.data.thumbnail),
        ),
      ],
    );
  }
}
