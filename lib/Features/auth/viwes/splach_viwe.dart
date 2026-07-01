import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_navigate.dart' show AppNavigate;
import 'package:todo/Features/auth/viwes/lets_start_viwe.dart';

class SplachViwe extends StatefulWidget {
  const SplachViwe({super.key});

  @override
  State<SplachViwe> createState() => _SplachViweState();
}

class _SplachViweState extends State<SplachViwe> {
   void initState() {
    super.initState();
    {
      Timer(Duration(seconds: 2), () {
        AppNavigate.toPUSHReplacement(context, const LetsStartViwe());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: AppSvg.splach));
  }
}
