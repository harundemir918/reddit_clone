import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/home/home_bloc.dart';
import 'core/bloc/theme/theme_bloc.dart';
import 'core/constants/string_constants.dart';
import 'core/resources/repository/posts/posts_repository.dart';
import 'ui/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _postsRepository = PostsRepository();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                HomeBloc(_postsRepository)..add(FetchPostsEvent()),
          ),
          BlocProvider(
            create: (context) => ThemeBloc()..add(InitThemeEvent()),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeData>(
          builder: (context, state) => MaterialApp(
            title: appName,
            debugShowCheckedModeBanner: false,
            theme: state,
            home: const HomeView(),
          ),
        ),
      );
}
