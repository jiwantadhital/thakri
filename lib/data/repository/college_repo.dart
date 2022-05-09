import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class CollegeRepo extends GetxService{
  final ApiClient1 apiClient1;
  CollegeRepo({required this.apiClient1});


  Future<Response> getcollegeList()async{
    return await apiClient1.getData(AppConstants.COLLEGE_URI);
  }
}