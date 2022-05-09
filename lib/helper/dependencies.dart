import 'package:thadri/controllers/abroad_study_controller.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/controllers/college_controller.dart';
import 'package:thadri/controllers/services_controller.dart';
import 'package:thadri/controllers/study_in_controllers.dart';
import 'package:thadri/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:thadri/data/api/api_client1.dart';
import 'package:thadri/data/repository/abroad_study_repo.dart';
import 'package:thadri/data/repository/blog_repo.dart';
import 'package:thadri/data/repository/college_repo.dart';
import 'package:thadri/data/repository/service_repo.dart';
import 'package:thadri/data/repository/study_in_repo.dart';
import 'package:thadri/utils/app_constants.dart';

Future<void> init() async{

  //api-client
Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
Get.lazyPut(()=>ApiClient1(appBaseUrl1: AppConstants.MAIN_URL));

//repos
Get.lazyPut(() => StudyInRepo(apiClient: Get.find()));
Get.lazyPut(() => AbroadStudyRepo(apiClient: Get.find()));
Get.lazyPut(() => BlogRepo(apiClient1: Get.find()));
Get.lazyPut(() => ServiceRepo(apiClient1: Get.find()));
Get.lazyPut(() => CollegeRepo(apiClient1: Get.find()));


//controllers
Get.lazyPut(() => StudyInController(studyInRepo: Get.find()));
Get.lazyPut(() => AbroadStudyController(abroadStudyRepo: Get.find()));
Get.lazyPut(() => BlogController(blogRepo: Get.find()));
Get.lazyPut(() => ServiceController(serviceRepo: Get.find()));
Get.lazyPut(() => CollegeController(collegeRepo: Get.find()));



}