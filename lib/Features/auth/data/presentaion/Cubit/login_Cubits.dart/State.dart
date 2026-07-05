import 'package:todo/Features/auth/data/model/Login_model.dart';

class loginstate {}

class loginnitial extends loginstate {}

class loginloading extends loginstate {}

class loginsuccess extends loginstate {
  LoginModel Task;
  loginsuccess({required this.Task});
}

class loginerror extends loginstate {
  String errorMassage;
  loginerror({required this.errorMassage});
}
