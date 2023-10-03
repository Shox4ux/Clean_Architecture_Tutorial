import 'dart:io';

import 'package:clean_architecture_tutorial/src/res/data_states.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

abstract class ServiceRepo {
  Future<DataState<T>> getStateOf<T>(
      Future<HttpResponse<T>> Function() request) async {
    try {
      final result = await request();
      if (result.response.statusCode == HttpStatus.ok) {
        return DataSuccess(result.data);
      } else {
        throw DioException(
            requestOptions: result.response.requestOptions,
            response: result.response);
      }
    } on DioException catch (error) {
      return DataFailure(error: error);
    }
  }
}
