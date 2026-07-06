import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Color.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Features/Add/viwes/update&delet_task.dart';
import 'package:todo/Features/auth/data/model/My_task.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.task});
  final Tasks task;
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
                  Text(task.title ?? 'No Title'),
                  Spacer(flex: 1),
                  Text('${task.date}'),
                ],
              ),
              SizedBox(height: AppSize.appbarHeight),
              Text(task.description ?? 'No Description'),
            ],
          ),
        ),
      ),
    );
  }
}
