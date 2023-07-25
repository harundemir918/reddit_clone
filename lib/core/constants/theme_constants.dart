/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_constants.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  brightness: Brightness.light,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: kWhiteColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kBackgroundColor,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
);
