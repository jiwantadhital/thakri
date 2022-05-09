import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/abroad_study_repo.dart';
import 'package:thadri/data/repository/blog_repo.dart';
import 'package:thadri/data/repository/service_repo.dart';
import 'package:thadri/models/abroad_study_model.dart';
import 'package:thadri/models/blog_model.dart';
import 'package:thadri/models/services_model.dart';
import 'package:thadri/models/study_model.dart';

class ServiceController extends GetxController{

  final ServiceRepo serviceRepo;
  ServiceController({required this.serviceRepo});

  List<ServiceModel> _serviceList=[];
  List<ServiceModel> get serviceList => _serviceList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getserviceList()async{
    Response response = await serviceRepo.getserviceList();
    if(response.statusCode==200){
      print("service");
      _serviceList=[];
      _serviceList.addAll(List<ServiceModel>.from(jsonDecode(response.bodyString.toString()).map((x) => ServiceModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}