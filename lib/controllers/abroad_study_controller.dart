import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/abroad_study_repo.dart';
import 'package:thadri/models/abroad_study_model.dart';
import 'package:thadri/models/study_model.dart';

class AbroadStudyController extends GetxController{

  final AbroadStudyRepo abroadStudyRepo;
  AbroadStudyController({required this.abroadStudyRepo});

  List<AbroadModel> _abroadStudyList=[];
  List<AbroadModel> get abroadStudyList => _abroadStudyList;
   bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getabroadStudyList()async{
    Response response = await abroadStudyRepo.getabroadStudyList();
    if(response.statusCode==200){
      _abroadStudyList=[];
      _abroadStudyList.addAll(List<AbroadModel>.from(jsonDecode(response.bodyString.toString()).map((x) => AbroadModel.fromJson(x))));
      _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}