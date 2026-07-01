import 'package:flutter/material.dart'; // استخدم هذا الامتداد بدلاً من dart:ui

abstract class AppTextStyle {
  static const TextStyle letsStartWelcome = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: 'LexendDeca',
  );

  static const TextStyle letsStartBaraGraph = TextStyle(
    fontSize: 16,
    color: Color(0xff6E6A7C),
    fontWeight: FontWeight.w500,
    fontFamily: 'LexendDeca',
  );
  static const TextStyle letsStartBooTom = TextStyle(
    fontSize: 19,
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.w300,
    fontFamily: 'LexendDeca',
  );
}
