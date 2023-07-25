/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/core/extensions/context_extension.dart';

import '../../../../core/bloc/home/home_bloc.dart';
import '../../../widgets/try_again_button.dart';

class HomeErrorSection extends StatelessWidget {
  const HomeErrorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: context.getDynamicHeight(0.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              key: ValueKey("tryAgainText"),
              "Failed to fetch data.",
            ),
            TryAgainButton(
              onPressed: () => context.read<HomeBloc>().add(FetchPostsEvent()),
            ),
          ],
        ),
      ),
    );
  }
}
