import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/home/home_bloc.dart';
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
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeBloc(_postsRepository)..add(FetchPostsEvent()),
        child: MaterialApp(
          title: appName,
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          home: const HomeView(),
        ),
      );
}
