/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import 'home_app_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const HomeAppBar(
          title: "r/FlutterDev",
          image:
              "https://styles.redditmedia.com/t5_2x3q8/styles/bannerBackgroundImage_ih7a660qvyv31.png?width=4000&s=7b03ca591f42eaa0459d521a2a395a32f0f37730",
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('List Item $index'),
              );
            },
            childCount: 50,
          ),
        ),
      ],
    );
  }
}
