/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

class HomePostsCardDescription extends StatelessWidget {
  final String description;

  const HomePostsCardDescription({
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          description,
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      );
}
