// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_tutorial/src/data/remote/api_service.dart';
import 'package:clean_architecture_tutorial/src/data/remote/service_repo/service_repo.dart';
import 'package:clean_architecture_tutorial/src/domain/models/request/request_model.dart';
import 'package:clean_architecture_tutorial/src/domain/models/response/response_model.dart';
import 'package:clean_architecture_tutorial/src/domain/repos/photo_base_repo.dart';
import 'package:clean_architecture_tutorial/src/res/data_states.dart';

class PhotoProcessRepo extends ServiceRepo implements PhotoBaseRepo {
  final ApiService _apiService;
  PhotoProcessRepo(this._apiService);
  @override
  Future<DataState<List<Photos>>> getPhotos(
      {required RequestModel request, required String url}) async {
    return await getStateOf<List<Photos>>(
        () async => await _apiService.getPhotos(request: request, url: url));
  }
}
