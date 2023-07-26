/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/models/post_model.dart';
import 'home_posts_card.dart';

class HomePostsList extends StatelessWidget {
  final List<Post> postsList;

  const HomePostsList({
    required this.postsList,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) =>
              HomePostsCard(post: postsList[index]),
          childCount: postsList.length,
        ),
      );
}
