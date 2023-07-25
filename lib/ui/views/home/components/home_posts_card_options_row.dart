/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

class HomePostsCardOptionsRow extends StatelessWidget {
  final IconData icon;
  final String title;

  const HomePostsCardOptionsRow({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8.0),
          Text(title),
        ],
      );
}
