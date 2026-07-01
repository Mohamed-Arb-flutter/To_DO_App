import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Color.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Features/Add/viwes/Add_task.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AppPng.plastinn, radius: 25),
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {
          AppNavigate.toPUSH(context, const AddTask());
        },
        child: SizedBox(
          height: AppSize.float,
          width: AppSize.float,
          child: AppPng.flotaction,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: AppSize.buttonHeight),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(AppText.Tasks, style: AppTextStyle.loginAccount),
                SizedBox(width: AppSize.wight),
                Text(
                  '10',
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(child: list_viwe_blder()),
        ],
      ),
    );
  }
}

class list_viwe_blder extends StatelessWidget {
  const list_viwe_blder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: const CustomCard(),
        );
      },
    );
  }
}
