/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static bool isDarkTheme = false;

  static Color hexToColor(String code) =>
      Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

  static Future<bool> isDark() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    isDarkTheme = sharedPreferences.getBool("isDark") ?? false;
    return sharedPreferences.getBool("isDark") ?? false;
  }

  static void switchTheme(bool isDark) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    isDarkTheme = isDark;
    sharedPreferences.setBool("isDark", isDark);
  }
}
