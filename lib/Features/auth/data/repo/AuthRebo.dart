import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:todo/Features/auth/data/model/Login_model.dart';
import 'package:todo/Features/auth/data/model/My_task.dart';

import 'package:todo/Features/auth/data/model/basemodel.dart';

Dio dio = Dio();
String baseUrl = "https://ntitodo-production-3c33.up.railway.app/api";
String? accessToken;

class Authrebo {
  Future<Either<String, BaseModel>> register({
    required username,
    required password,
  }) async {
    try {
      var Resbonse = await dio.post(
        '$baseUrl/register',
        data: FormData.fromMap({'username': username, 'password': password}),
      );
      var mapResponse = Resbonse.data as Map<String, dynamic>;

      BaseModel registerModel = BaseModel.fromJson(mapResponse);

      return Right(registerModel);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
  
Future<Either<String, LoginModel>> login({
  required String username,
  required String password,
}) async {
  try {
    var response = await dio.post(
      '$baseUrl/login',
      data: FormData.fromMap({'username': username, 'password': password}),
    );

    var mapResponse = response.data as Map<String, dynamic>;
    LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(
      mapResponse,
    );
    accessToken = loginResponseModel.accessToken;

    return Right(LoginModel.fromJson(mapResponse));
  } catch (e) {
    return Left(e.toString());
  }
}

Future<Either<String, List<Tasks>>> Mytask() async {
  try {
    var response = await dio.get(
      '$baseUrl/my_tasks',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );
    var mapResponse = response.data as Map<String, dynamic>;
    MyTask myTask = MyTask.fromJson(mapResponse);
    return Right(myTask.tasks!);
  } catch (e) {
    return Left(e.toString());
  }
}

}
