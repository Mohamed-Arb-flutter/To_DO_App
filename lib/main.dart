import 'package:flutter/material.dart';
import 'package:todo/Features/auth/viwes/splach_viwe.dart';

void main() {
  runApp(const ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplachViwe());
  }
}
