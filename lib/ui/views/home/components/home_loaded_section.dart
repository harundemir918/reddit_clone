/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:reddit_clone/ui/views/home/components/home_posts_list.dart';

class HomeLoadedSection extends StatelessWidget {
  final dynamic state;

  const HomeLoadedSection({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return HomePostsList(postsList: state.postsList);
  }
}
