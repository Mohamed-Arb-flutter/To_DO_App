import 'package:todo/Core/helper/basemodel.dart';

class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  String succsesMasge;

  RegisterSuccess({required this.succsesMasge});
}

class RegisterError extends RegisterState {
  String error;
  RegisterError({required this.error});
}
