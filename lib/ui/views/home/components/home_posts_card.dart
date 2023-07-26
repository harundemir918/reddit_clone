/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/models/post_model.dart';
import '../../../../core/utils/utils.dart';
import 'home_posts_card_author.dart';
import 'home_posts_card_category.dart';
import 'home_posts_card_description.dart';
import 'home_posts_card_options.dart';
import 'home_posts_card_title.dart';
import 'home_posts_card_top_section.dart';

class HomePostsCard extends StatelessWidget {
  final Post post;

  const HomePostsCard({required this.post, super.key});

  @override
  Widget build(BuildContext context) => Card(
        child: Container(
          width: context.getWidth(),
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePostsCardAuthor(author: post.data.author),
              const SizedBox(height: 8.0),
              if (post.data.thumbnail != "self")
                HomePostsCardTopSection(post: post)
              else
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomePostsCardTitle(title: post.data.title),
                    HomePostsCardCategory(
                      category: post.data.linkFlairText,
                      color:
                          Utils.hexToColor(post.data.linkFlairBackgroundColor),
                    ),
                  ],
                ),
              if (post.data.selftext != null && post.data.selftext!.isNotEmpty)
                HomePostsCardDescription(description: post.data.selftext!),
              HomePostsCardOptions(post: post),
            ],
          ),
        ),
      );
}
