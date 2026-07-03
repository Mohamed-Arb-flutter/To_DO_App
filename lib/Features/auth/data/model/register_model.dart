class RegisterModel {
  String? message;
  bool? states;
  RegisterModel({required this.message, required this.states});
  RegisterModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    states = json['status'];
  }
}
