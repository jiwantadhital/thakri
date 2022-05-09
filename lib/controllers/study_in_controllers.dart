import 'package:get/get.dart';
import 'package:thadri/data/repository/study_in_repo.dart';
import 'package:thadri/models/study_model.dart';

class StudyInController extends GetxController{

  final StudyInRepo studyInRepo;
  StudyInController({required this.studyInRepo});

  List<dynamic> _studyInList=[];
  List<dynamic> get studyInList => _studyInList;

  Future<void> getStudyInList()async{
    Response response = await studyInRepo.getStudyInList();
    if(response.statusCode==200){
      // print("got products");
      _studyInList=[];
      _studyInList.addAll(Study.fromJson(response.body).products);
      update();
    }
    else{
        // print("object");
    }
  }

}