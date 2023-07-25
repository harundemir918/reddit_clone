/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

class HomePostsCardTitle extends StatelessWidget {
  final String title;

  const HomePostsCardTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
}
