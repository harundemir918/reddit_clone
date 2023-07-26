/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';

class HomeLoadingSection extends StatelessWidget {
  const HomeLoadingSection({super.key});

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.getDynamicHeight(0.1),
          ),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
}
