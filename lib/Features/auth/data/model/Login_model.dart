class LoginModel {
  int? id;
  String? username;
  String? imagePath;

  LoginModel({this.id, this.username, this.imagePath});
  LoginModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    imagePath = json['image_path'];
  }
}

class LoginResponseModel {
  String? accessToken;
  String? refreshToken;
  bool? status;
  LoginModel? user;

  LoginResponseModel({
    this.accessToken,
    this.refreshToken,
    this.status,
    this.user,
  });
  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    status = json['status'];
    if (json['user'] != null) {
      user = LoginModel.fromJson(json['user']);
    }
  }
}
