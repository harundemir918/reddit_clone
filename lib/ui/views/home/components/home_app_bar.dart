/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/bloc/theme/theme_bloc.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/extensions/context_extension.dart';
import 'home_app_bar_image.dart';
import 'home_app_bar_title.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String image;
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const HomeAppBar({required this.image, required this.title, super.key});

  @override
  Widget build(BuildContext context) => SliverAppBar(
        expandedHeight: context.getDynamicHeight(0.6),
        pinned: true,
        actions: [
          BlocBuilder<ThemeBloc, ThemeData>(
            builder: (context, state) => IconButton(
              onPressed: () =>
                  context.read<ThemeBloc>().add(SwitchThemeEvent()),
              icon: Icon(state == ThemeData.dark()
                  ? Icons.light_mode
                  : Icons.dark_mode),
            ),
          ),
        ],
        flexibleSpace: FlexibleSpaceBar(
          background: HomeAppBarImage(image: image),
          title: LayoutBuilder(
            builder: (context, constraints) => HomeAppBarTitle(
              title: title,
              color: kWhiteColor,
            ),
          ),
          centerTitle: true,
        ),
      );
}
