import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/utils/app_constants.dart';

class AbroadStudyRepo extends GetxService{
  final ApiClient apiClient;
  AbroadStudyRepo({required this.apiClient});


  Future<Response> getabroadStudyList()async{
    return await apiClient.getData(AppConstants.ABROAD_STUDY_URI);
  }
}