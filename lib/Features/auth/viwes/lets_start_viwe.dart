import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Core/widghts/custom_bootom.dart';
import 'package:todo/Features/auth/viwes/Register_viwe.dart';

class LetsStartViwe extends StatelessWidget {
  const LetsStartViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 1),
            AppSvg.lets_start,
            Spacer(flex: 1),
            Text(
              AppText.letsStartWelcome,
              style: AppTextStyle.letsStartWelcome,
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 1),
            Text(
              AppText.letsStartBaraGraph,
              style: AppTextStyle.letsStartBaraGraph,
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 1),
            SizedBox(
              width: double.infinity,
              child: CustomBootom(
                name: AppText.letsStartBooTom,
                onPressed: () {
                  AppNavigate.toPUSHReplacement(context, RegisterViwe());
                },
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
