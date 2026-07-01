import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_icons.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Core/widghts/custom_bootom.dart';
import 'package:todo/Features/auth/viwes/Home.dart';
import 'package:todo/Features/auth/viwes/Register_viwe.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_TextFiled.dart';

class LoginViwe extends StatelessWidget {
  const LoginViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppPng.plastin,
          SizedBox(height: AppSize.appbarHeight),
          CustomTextfiled(
            name: AppText.username,
            iconData: AppSvg.Username_icon,
          ),
          SizedBox(height: AppSize.textfieldHeight),
          CustomTextfiled(
            name: AppText.password,
            iconData: AppSvg.password_icon,
            suffixIcon: AppIcons.appIcon,
          ),

          SizedBox(height: AppSize.buttonHeight),
          CustomBootom(
            name: AppText.Login,
            onPressed: () {
              AppNavigate.toPUSHReplacement(context, Home());
            },
          ),
          SizedBox(height: AppSize.buttonHeight),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppText.already, style: AppTextStyle.alreadyAccount),
              SizedBox(width: AppSize.wight),
              GestureDetector(
                onTap: () => AppNavigate.toPUSHReplacement(
                  context,
                  const RegisterViwe(),
                ),
                child: Text(AppText.Register, style: AppTextStyle.loginAccount),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
