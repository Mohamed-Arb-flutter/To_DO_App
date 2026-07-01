import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/Core/utils/App_Color.dart';
import 'package:todo/Core/utils/App_text_style.dart';

class CustomBootom extends StatelessWidget {
  const CustomBootom({super.key, required this.name, this.onPressed});
  final String name;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          foregroundColor: AppColor.white,
        ),
        onPressed: onPressed,
        child: Text(name, style: AppTextStyle.letsStartBooTom),
      ),
    );
  }
}
