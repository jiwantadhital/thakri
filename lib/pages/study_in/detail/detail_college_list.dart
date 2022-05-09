import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/college_controller.dart';
import 'package:thadri/utils/app_constants.dart';
import 'package:thadri/widgets/texts/big_text.dart';
import 'package:thadri/widgets/texts/small_text.dart';

class DetailCollegeList extends StatelessWidget {
  const DetailCollegeList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                      children: [
                       GetBuilder<CollegeController>(builder: ((controller) {
                         return controller.isLoaded? ListView.builder(
                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.collegeList.length,
                        itemBuilder: (context,index){
                          return Container(
                            margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                            child: GestureDetector(
                               onTap: () {
                        
                      },
                              child: Row(
                                children: 
                                  [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            AppConstants.MAIN_URL+controller.collegeList[index].image.toString(),
                          ),
                          ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text:controller.collegeList[index].name.toString(),color: Colors.black,),
                              SizedBox(height: 5,),
                              SmallText(text: controller.collegeList[index].country.toString(),color: Colors.black26,),
                              SizedBox(height: 10,),
                              Row(
                    children: [
                      Wrap(
                        children: 
                          List.generate(5, (index) => Icon(Icons.star_border_outlined,color: Colors.pink,size: 15,),),
                      ),
                       SizedBox(width: 10,),
                       SmallText(text: "4.5",color: Colors.black38,),
                       SizedBox(width: 20,),
                       SmallText(text: "1287",color: Colors.black38,),
                       SizedBox(width: 5,),
                       SmallText(text: "comments",color: Colors.black38,),
                    ],
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                                ],
                              ),
                            ),
                          );
                      }):CircularProgressIndicator();
                       }))
                      ],
                    );
  }
}