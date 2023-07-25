/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:reddit_clone/ui/views/home/components/home_posts_card.dart';

import '../../../../core/models/post_model.dart';

class HomePostsList extends StatelessWidget {
  final List<Post> postsList;

  const HomePostsList({
    super.key,
    required this.postsList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return HomePostsCard(post: postsList[index]);
        },
        childCount: postsList.length,
      ),
    );
  }
}
