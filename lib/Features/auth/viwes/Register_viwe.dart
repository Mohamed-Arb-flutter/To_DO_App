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
import 'package:todo/Features/auth/data/presentaion/Cubit/Register/Register_Cubit.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/Register/Register_state.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_TextFiled.dart';
import 'package:todo/Features/auth/viwes/login_viwe.dart';

class RegisterViwe extends StatefulWidget {
  const RegisterViwe({super.key});

  @override
  State<RegisterViwe> createState() => _RegisterViweState();
}

class _RegisterViweState extends State<RegisterViwe> {
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  // final namecontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(RegisterInitial()),
      child: Scaffold(
        body: BlocConsumer<RegisterCubit, RegisterState>(
          builder: (context, state) {
            return ListView(
              children: [
                AppPng.plastin,
                SizedBox(height: AppSize.appbarHeight),
                CustomTextfiled(
                  controller:RegisterCubit.get(context).username,
                  name: AppText.username,
                  iconData: AppSvg.Username_icon,
                ),
                SizedBox(height: AppSize.textfieldHeight),
                CustomTextfiled(
                  controller:RegisterCubit.get(context).password,
                  name: AppText.password,
                  iconData: AppSvg.password_icon,
                  suffixIcon: AppIcons.appIcon,
                ),
                SizedBox(height: AppSize.textfieldHeight),
                CustomTextfiled(
                  name: AppText.confirmpassword,
                  iconData: AppSvg.password_icon,
                  suffixIcon: AppIcons.appIcon,
                ),

                SizedBox(height: AppSize.buttonHeight),
                if (state is RegisterLoading)
                  const Center(child: CircularProgressIndicator()),

                CustomBootom(
                  name: AppText.Register,
                  onPressed: RegisterCubit.get(context).Onregisterpreesd,
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
                        const LoginViwe(),
                      ),
                      child: Text(
                        AppText.Login,
                        style: AppTextStyle.loginAccount,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          listener: (context, state) {
            if (state is RegisterSuccess) {
              showCustomSnackBar(
                context,
                text: "Register Success\nWelcome",
                status: SnackBarStatus.success,
              );
            } else if (state is RegisterError) {
              showCustomSnackBar(
                context,
                text: state.error,
                status: SnackBarStatus.fail,
              );
            }
          },
        ),
      ),
    );
  }
}
