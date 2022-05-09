import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/college_repo.dart';

import 'package:thadri/data/repository/service_repo.dart';
import 'package:thadri/models/college_model.dart';
import 'package:thadri/models/services_model.dart';

class CollegeController extends GetxController{

  final CollegeRepo collegeRepo;
  CollegeController({required this.collegeRepo});

  List<CollegeModel> _collegeList=[];
  List<CollegeModel> get collegeList => _collegeList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getcollegeList()async{
    Response response = await collegeRepo.getcollegeList();
    if(response.statusCode==200){
      print("college");
      _collegeList=[];
      _collegeList.addAll(List<CollegeModel>.from(jsonDecode(response.bodyString.toString()).map((x) => CollegeModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}