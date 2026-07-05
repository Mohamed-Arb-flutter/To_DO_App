import 'package:dart_either/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:todo/Features/Add/data/model/basemodelsuccses.dart';
import 'package:todo/Features/Add/data/model/update_model.dart';

Dio dio = Dio();
String baseUrl = "https://ntitodo-production-3c33.up.railway.app/api/";
String? accessToken;

class Authrebo {
  Future<Either<String, BaseModel>> newTask({
    required username,
    required password,
  }) async {
    try {
      var Resbonse = await dio.post(
        '$baseUrl/new_task',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        data: FormData.fromMap({'username': username, 'password': password}),
      );
      var mapResponse = Resbonse.data as Map<String, dynamic>;

      BaseModel registerModel = BaseModel.fromJson(mapResponse);

      return Right(registerModel);
    } on Exception catch (e) {
      return Left(e.toString());
    }
  }
}

Future<Either<String, String>> delete({required id}) async {
  try {
    var response = await dio.get(
      "'$baseUrl/tasks/'${id}'",
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );
    var mapResponse = response.data as Map<String, dynamic>;
    BaseModel model = BaseModel.fromJson(mapResponse);
    return Right(model.message!);
  } catch (e) {
    return Left(e.toString());
  }
}

Future<Either<String, UpdateModel>> update({
  required id,
  required title,
  required description,
}) async {
  try {
    var resbonse = await dio.put(
      '$baseUrl/tasks/$id',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );
    var mapResponse = resbonse.data as Map<String, dynamic>;
    UpdateModel updateModel = UpdateModel.fromJson(mapResponse);
    return Right(updateModel);
  } catch (e) {
    return Left(e.toString());
  }
}
