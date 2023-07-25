import 'package:flutter/material.dart';

import 'core/constants/theme_constants.dart';
import 'ui/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit Clone',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const HomeView(),
    );
  }
}
