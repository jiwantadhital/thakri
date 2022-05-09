import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/abroad_study_controller.dart';
import 'package:thadri/controllers/study_in_controllers.dart';
import 'package:thadri/pages/study_in/detail/study_in_detail.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/utils/app_constants.dart';

class StudyIn extends StatelessWidget {
  const StudyIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
      child: GetBuilder<AbroadStudyController>(builder: (abroadStudy){
        return abroadStudy.isLoaded?Card(
          child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: abroadStudy.abroadStudyList.length,
                itemBuilder: (BuildContext context, int index) { 
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed(RouteHelper.getStudyIn(index));
                    },
                    child: Container(
                      width: 150,
                      child: Stack(
                          children: [
                            Positioned(
                              child: Column(
                              children: 
                                [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                      image: DecorationImage(image: NetworkImage(AppConstants.BASE_URL+abroadStudy.abroadStudyList[index].image!.toString()),fit: BoxFit.cover),
                                    ),
                            ),
                                  ),
                                  Card(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5,right: 5),
                                      height: 60,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(abroadStudy.abroadStudyList[index].title.toString(),style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            ),
                          ],
                      )
                      ),
                  );
                }
              ),
        ):CircularProgressIndicator(color: Colors.blue.shade900,);
      },)
    );
  }
}