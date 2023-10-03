import 'package:clean_architecture_tutorial/src/domain/models/request/request_model.dart';
import 'package:clean_architecture_tutorial/src/domain/models/response/response_model.dart';
import 'package:clean_architecture_tutorial/src/res/data_states.dart';

abstract class PhotoBaseRepo {
  Future<DataState<List<Photos>>> getPhotos(
      {required RequestModel request, required String url});
}
