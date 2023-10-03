import 'package:clean_architecture_tutorial/src/domain/models/request/request_model.dart';
import 'package:clean_architecture_tutorial/src/domain/models/response/response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<HttpResponse<List<Photos>>> getPhotos(
      {required RequestModel request, required String url}) async {
    final response = await _dio.get(url, queryParameters: request.toJson());
    final data = ResponseModel.fromJson(response.data);

    return HttpResponse(data.photos!, response);
  }
}
