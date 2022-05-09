import 'dart:convert';

import 'package:get/get.dart';
import 'package:thadri/data/repository/abroad_study_repo.dart';
import 'package:thadri/data/repository/blog_repo.dart';
import 'package:thadri/models/abroad_study_model.dart';
import 'package:thadri/models/blog_model.dart';
import 'package:thadri/models/study_model.dart';

class BlogController extends GetxController{

  final BlogRepo blogRepo;
  BlogController({required this.blogRepo});

  List<BlogModel> _blogList=[];
  List<BlogModel> get blogList => _blogList;
  bool _isloaded = false;
  bool get isLoaded => _isloaded;

  Future<void> getblogList()async{
    Response response = await blogRepo.getblogList();
    if(response.statusCode==200){
      print("got products");
      _blogList=[];
      _blogList.addAll(List<BlogModel>.from(jsonDecode(response.bodyString.toString()).map((x) => BlogModel.fromJson(x))));
       _isloaded=true;
      update();
    }
    else{
        print("object");
    }
  }

}