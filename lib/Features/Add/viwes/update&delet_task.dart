import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_icons.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Core/widghts/custom_bootom.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_TextFiled.dart';

class Update_deletTask extends StatelessWidget {
  const Update_deletTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(flex: 1),
            Text(AppText.updateTask),
            Spacer(flex: 1),
            devbootom(),
          ],
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(AppIcons.arrow),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AppPng.plastinn, radius: 40),
                const SizedBox(width: AppSize.wight),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppText.Welcome, style: AppTextStyle.alreadyAccount),
                    Text(AppText.Name, style: AppTextStyle.loginAccount),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppSize.buttonHeight),
            CustomTextfiled(name: AppText.Title),
            const SizedBox(height: AppSize.buttonHeight),
            CustomTextfiled(name: AppText.Description),
            const SizedBox(height: AppSize.buttonHeight),
            CustomBootom(name: AppText.updateTask, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class devbootom extends StatelessWidget {
  const devbootom({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(children: [Icon(AppIcons.delete), Text(AppText.deleteTask)]),
    );
  }
}
