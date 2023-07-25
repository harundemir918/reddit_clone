/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

class Utils {
  static Color hexToColor(String code) =>
      Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
