/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';

class HomePostsCardAuthor extends StatelessWidget {
  final String author;

  const HomePostsCardAuthor({
    required this.author,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        width: context.getWidth(),
        child: Text(
          author,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      );
}
