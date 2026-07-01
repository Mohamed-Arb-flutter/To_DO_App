import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppNavigate {
  static void toPUSH(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  static void toPUSHReplacement(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }
}
