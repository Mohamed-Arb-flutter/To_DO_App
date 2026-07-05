import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/Features/auth/data/presentaion/Cubit/Register/Register_state.dart';
import 'package:todo/Features/auth/data/repo/AuthRebo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(super.initialState);
  Authrebo Rebo = Authrebo();
  final username = TextEditingController();
  final password = TextEditingController();
  static RegisterCubit get(context) => BlocProvider.of(context);
  Onregisterpreesd() async {
    emit(RegisterLoading());
    var result = await Rebo.register(
      username: username.text,
      password: password.text,
    );
    result.fold(
      ifLeft: (String value) {
        emit(RegisterError(error: value));
      },
      ifRight: (String value) {
        emit(RegisterSuccess(succsesMasge: value));
      },
    );
  }
}
