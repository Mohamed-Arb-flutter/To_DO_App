import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/Core/helper/snakbar.dart';
import 'package:todo/Core/utils/App_Size.dart';
import 'package:todo/Core/utils/App_Text.dart';
import 'package:todo/Core/utils/App_assets.dart';
import 'package:todo/Core/utils/App_icons.dart';
import 'package:todo/Core/utils/App_navigate.dart';
import 'package:todo/Core/utils/App_text_style.dart';
import 'package:todo/Core/widghts/custom_bootom.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/login_Cubits.dart/Cubit.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/login_Cubits.dart/State.dart';
import 'package:todo/Features/auth/viwes/Home.dart';
import 'package:todo/Features/auth/viwes/Register_viwe.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_TextFiled.dart';

class LoginViwe extends StatelessWidget {
  const LoginViwe({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginCubits(),
      child: Scaffold(
        body: BlocConsumer<loginCubits, loginstate>(
          listener: (context, state) {
            if (state is loginsuccess) {
              showCustomSnackBar(
                context,
                text: 'Login Success\nWelcome',
                status: SnackBarStatus.success,
              );
              AppNavigate.toPUSHReplacement(context, Home());
            }
            ;
            if (state is loginerror) {
              showCustomSnackBar(
                context,
                text: state.errorMassage,
                status: SnackBarStatus.fail,
              );
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                AppPng.plastin,
                SizedBox(height: AppSize.appbarHeight),
                CustomTextfiled(
                  controller: loginCubits.get(context).username,
                  name: AppText.username,
                  iconData: AppSvg.Username_icon,
                ),
                SizedBox(height: AppSize.textfieldHeight),
                CustomTextfiled(
                  controller: loginCubits.get(context).password,
                  name: AppText.password,
                  iconData: AppSvg.password_icon,
                  suffixIcon: AppIcons.appIcon,
                ),

                SizedBox(height: AppSize.buttonHeight),
                if (state is loginloading)
                  const Center(child: CircularProgressIndicator())
                else
                  CustomBootom(
                    name: AppText.Login,
                    onPressed: loginCubits.get(context).onloginpressd,
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
                      child: Text(
                        AppText.Register,
                        style: AppTextStyle.loginAccount,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
