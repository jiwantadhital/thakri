import 'package:get/get.dart';
import 'package:thadri/utils/app_constants.dart';

class ApiClient1 extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl1;
  late Map<String,String> _mainHeaders;

  ApiClient1({required this.appBaseUrl1}){
    baseUrl = appBaseUrl1;
    timeout=Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders={
      'Content-type' : 'application/json; charset=UTF-8',
      'Authorization' : 'Bearer $token'
    };
  }
  Future<Response> getData(String uri,)async{
    try{
      Response response = await get(uri);
      return response;
    }
    catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}