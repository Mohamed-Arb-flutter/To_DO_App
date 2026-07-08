import 'package:todo/Features/auth/data/model/Login_model.dart';

class Tasks {
  int? id;
  String? title;
  String? description;
  String? date;
  String? Image;

  Tasks({this.id, this.title, this.description, this.date, this.Image});

  Tasks.formJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    date = json['created_at'];
    Image = json['image_path'];
  }
}

class MyTask {
  List<Tasks>? tasks;

  bool? states;

  MyTask({this.tasks, this.states,});

  MyTask.fromJson(Map<String, dynamic> json) {
    if (json['tasks'] != null) {
      tasks = <Tasks>[];
      json['tasks'].forEach((v) {
        tasks!.add(Tasks.formJson(v));
      });
    }

    states = json['status'];
  }
}
