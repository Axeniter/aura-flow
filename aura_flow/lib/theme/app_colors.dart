import 'package:flutter/material.dart';
import 'dart:math';

class AppColors {
  AppColors._();

  static const backgroundLight = Color(0xfff5f5f5);
  static const backgroundDark = Color(0xff1c1c1c);

  static const surfaceLight = Color(0xffffffff);
  static const surfaceDark = Color(0xff161717);

  static const List<Color> accents = [
    Color(0xff28fcb9),
    Color(0xffbfff5e),
    Color(0xffff962e),
    Color(0xffa842fc),
    Color(0xfff757e5),
    Color(0xffff475a),
  ];
  
  static Color get accent => accents[Random().nextInt(accents.length)];
}