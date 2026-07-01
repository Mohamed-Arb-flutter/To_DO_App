import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Color.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Features/Add/viwes/update&delet_task.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigate.toPUSH(context, Update_deletTask());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.cardcolor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('My First Task'),
                  Spacer(flex: 1),
                  Text('11/03/2025 \n05:00 PM'),
                ],
              ),
              SizedBox(height: AppSize.appbarHeight),
              Text('Improve my English skills\n by trying to speek'),
            ],
          ),
        ),
      ),
    );
  }
}
