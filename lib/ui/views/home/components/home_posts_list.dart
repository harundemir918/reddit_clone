/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

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
          return ListTile(
            title: Text(postsList[index].data.title),
          );
        },
        childCount: postsList.length,
      ),
    );
  }
}
