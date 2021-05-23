import 'package:flutter/material.dart';

class AppColors {
  static Color primary = Colors.red.shade700;
  static int _redDefault = 0xFFD32F2F;
  static MaterialColor red = MaterialColor(
    _redDefault,
    <int, Color>{
      500: Color(_redDefault),
      600: Color(0xFFC62828),
    },
  );
}
