import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/Core/utils/App_Color.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Features/Add/viwes/Add_task.dart';
import 'package:todo/Features/auth/data/model/Login_model.dart';

import 'package:todo/Features/auth/data/presentaion/Cubit/Home/home_cubit.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/Home/home_state.dart';
import 'package:todo/Features/auth/data/repo/AuthRebo.dart';

import 'package:todo/Features/auth/viwes/Widghts/custom_list_viwe.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeInitial())..onprsed(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeSuccess) {
            return Scaffold(
              appBar: AppBar(
                title: Row(
                  children: [
                    CircleAvatar(backgroundImage: AppPng.plastinn, radius: 25),
                    const SizedBox(width: AppSize.wight),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.Welcome,
                          style: AppTextStyle.alreadyAccount,
                        ),
                        Text(
                          Authrebo.user ?? '',
                          style: AppTextStyle.loginAccount,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onPressed: () {
                  AppNavigate.toPUSH(context, const AddTask());
                },
                child: SizedBox(
                  height: AppSize.float,
                  width: AppSize.float,
                  child: AppPng.flotaction,
                ),
              ),
              body: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      SizedBox(height: AppSize.buttonHeight),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              AppText.Tasks,
                              style: AppTextStyle.loginAccount,
                            ),
                            SizedBox(width: AppSize.wight),
                            Text(
                              '${Authrebo.index}',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: list_viwe_blder()),
                    ],
                  );
                },
              ),
            );
          }
          return const Scaffold(
            body: Center(
              child:
                  CircularProgressIndicator(), // يعرض علامة تحميل في الحالات التانية
            ),
          );
        },
      ),
    );
  }
}
