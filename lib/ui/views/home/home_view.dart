/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

import 'components/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: HomeBody(),
      );
}
