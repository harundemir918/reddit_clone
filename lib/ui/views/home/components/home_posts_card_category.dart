/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';

class HomePostsCardCategory extends StatelessWidget {
  final String category;
  final Color color;

  const HomePostsCardCategory({
    super.key,
    required this.category,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        category,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: kWhiteColor,
            ),
      ),
    );
  }
}
