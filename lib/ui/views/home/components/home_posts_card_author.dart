/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:reddit_clone/core/extensions/context_extension.dart';

class HomePostsCardAuthor extends StatelessWidget {
  final String author;

  const HomePostsCardAuthor({
    super.key,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      child: Text(
        author,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
