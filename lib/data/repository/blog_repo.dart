import 'package:get/get.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/utils/app_constants.dart';

class BlogRepo extends GetxService{
  final ApiClient1 apiClient1;
  BlogRepo({required this.apiClient1});


  Future<Response> getblogList()async{
    return await apiClient1.getData(AppConstants.BLOG_URI);
  }
}