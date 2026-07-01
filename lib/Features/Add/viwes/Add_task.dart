import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_icons.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Core/widghts/custom_bootom.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_TextFiled.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(AppIcons.arrow),
        ),
        title: Text(AppText.addTask, style: AppTextStyle.Appbar),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: AppSize.buttonHeight),
          Center(
            child: Container(
              height: 200,
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: FittedBox(fit: BoxFit.cover, child: AppPng.plastin),
              ),
            ),
          ),
          SizedBox(height: AppSize.buttonHeight),
          CustomTextfiled(name: AppText.Title),
          SizedBox(height: AppSize.buttonHeight),
          CustomTextfiled(name: AppText.Description),
          SizedBox(height: AppSize.buttonHeight),
          CustomBootom(name: AppText.addTask, onPressed: () {}),
        ],
      ),
    );
  }
}
