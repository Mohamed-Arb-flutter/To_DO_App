
import 'package:flutter/material.dart';
import 'package:todo/Core/utils/App_Color.dart';

enum SnackBarStatus {success, fail, warning, info}


showCustomSnackBar(context, {required String text, required SnackBarStatus status}){
  Color background;
  IconData icon;
  switch(status){
    case SnackBarStatus.success:
      background = AppColor.primaryColor;
      icon = Icons.check_circle;
    case SnackBarStatus.fail:
      background = AppColor.red;
      icon = Icons.error;
    case SnackBarStatus.warning:
      background = AppColor.waring;
      icon = Icons.warning;
    case SnackBarStatus.info:
      background = AppColor.cardcolor;
      icon = Icons.info;
  }
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: background,
      content: Row(
        children: [
          Icon(icon, color: Colors.white,),
          SizedBox(width: 10,),
          Expanded(
            child: Text(text,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white
              ),),
          ),
        ],
      )));
}