import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/utils/app_constants.dart';

class StudyInRepo extends GetxService{
  final ApiClient apiClient;
  StudyInRepo({required this.apiClient});


  Future<Response> getStudyInList()async{
    return await apiClient.getData(AppConstants.STUDY_IN_URI);
  }
}