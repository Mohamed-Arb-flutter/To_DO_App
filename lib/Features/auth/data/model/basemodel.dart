class BaseModel {
  String? message;
  bool? states;
  BaseModel({required this.message, required this.states});
  BaseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    states = json['status'];
  }
}
