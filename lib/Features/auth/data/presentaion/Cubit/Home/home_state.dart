
import 'package:todo/Features/auth/data/model/My_task.dart';

class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeError extends HomeState {
  String error;
  HomeError(this.error);
}

class HomeSuccess extends HomeState {
  List<Tasks> tasks;

  HomeSuccess(this.tasks);
}
