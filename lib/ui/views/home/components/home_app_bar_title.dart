/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  final String title;
  final Color color;

  const HomeAppBarTitle({required this.title, required this.color, super.key});

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: title.length > 20 ? 14 : 18,
        ),
      );
}
