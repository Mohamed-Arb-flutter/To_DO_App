class TasksUpdate {
  String? title;
  String? description;
  int? id;
  String? image;

  TasksUpdate({this.title, this.description});
  TasksUpdate.formJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    id = json['id'];
    image = json['image_path'];
  }
}

class UpdateModel {
  String? message;
  bool? status;
  TasksUpdate? tasksUpdate;

  UpdateModel({this.message, this.status, this.tasksUpdate});

  UpdateModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    tasksUpdate = TasksUpdate.formJson(json['data']);
  }
}
