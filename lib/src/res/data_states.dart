import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;
  DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  @override
  final T data;
  DataSuccess(this.data) : super(data: data);
}

class DataFailure<T> extends DataState<T> {
  @override
  final DioException? error;
  DataFailure({this.error}) : super(error: error);
}
