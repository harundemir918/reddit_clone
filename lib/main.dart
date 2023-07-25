import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/home/home_bloc.dart';
import 'core/constants/theme_constants.dart';
import 'core/resources/repository/posts/fake/fake_posts_repository.dart';
import 'ui/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _postsRepository = FakePostsRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(_postsRepository)..add(FetchPostsEvent()),
      child: MaterialApp(
        title: 'Reddit Clone',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const HomeView(),
      ),
    );
  }
}
