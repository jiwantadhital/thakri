import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class ServiceRepo extends GetxService{
  final ApiClient1 apiClient1;
  ServiceRepo({required this.apiClient1});


  Future<Response> getserviceList()async{
    return await apiClient1.getData(AppConstants.SERVICE_URI);
  }
}