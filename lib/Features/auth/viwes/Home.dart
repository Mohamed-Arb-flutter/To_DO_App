import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Color.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Features/Add/viwes/Add_task.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
