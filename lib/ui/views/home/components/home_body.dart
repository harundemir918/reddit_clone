/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/bloc/home/home_bloc.dart';
import '../../../../core/constants/string_constants.dart';
import 'home_app_bar.dart';
import 'home_error_section.dart';
import 'home_loaded_section.dart';
import 'home_loading_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: () async => context.read<HomeBloc>().add(FetchPostsEvent()),
        child: CustomScrollView(
          slivers: <Widget>[
            const HomeAppBar(
              title: defaultTitle,
              image: defaultCover,
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeInitial || state is HomeLoading) {
                  return const HomeLoadingSection();
                }
                if (state is HomeLoaded) {
                  return HomeLoadedSection(state: state);
                } else {
                  return const HomeErrorSection();
                }
              },
            ),
          ],
        ),
      );
}
