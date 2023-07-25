/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/core/bloc/home/home_bloc.dart';
import 'package:reddit_clone/ui/views/home/components/home_error_section.dart';
import 'package:reddit_clone/ui/views/home/components/home_loaded_section.dart';
import 'package:reddit_clone/ui/views/home/components/home_loading_section.dart';

import 'home_app_bar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    context.read<HomeBloc>().postsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const HomeAppBar(
          title: "r/FlutterDev",
          image:
              "https://styles.redditmedia.com/t5_2x3q8/styles/bannerBackgroundImage_ih7a660qvyv31.png?width=4000&s=7b03ca591f42eaa0459d521a2a395a32f0f37730",
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
    );
  }
}
