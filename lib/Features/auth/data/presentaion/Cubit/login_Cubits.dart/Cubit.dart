import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/Features/auth/data/model/Login_model.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/login_Cubits.dart/State.dart';
import 'package:todo/Features/auth/data/repo/AuthRebo.dart';

class loginCubits extends Cubit<loginstate> {
  loginCubits() : super(loginnitial());
  static loginCubits get(context) => BlocProvider.of(context);
  Authrebo rebo = Authrebo();
  final username = TextEditingController();
  final password = TextEditingController();
  onloginpressd() async {
    emit(loginloading());
    var result = await rebo.login(
      username: username.text,
      password: password.text,
    );
    result.fold(
      ifLeft: (String value) {
        emit(loginerror(errorMassage: value));
      },
      ifRight: (LoginModel value) {
        emit(loginsuccess(Task: value));
      },
    );
  }
}
