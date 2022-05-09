import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/pages/apply/apply_page.dart';
import 'package:thadri/pages/buttom_bar.dart';
import 'package:thadri/pages/home_page.dart';
import 'package:thadri/pages/recent/recent_post.dart';
import 'package:thadri/pages/study_in/detail/detail_college_list.dart';
import 'package:thadri/pages/study_in/detail/title_description.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:thadri/utils/app_constants.dart';


class RecentDetails extends StatelessWidget {
  int pageId;
  RecentDetails({required this.pageId});


  @override
  Widget build(BuildContext context) {
      
  final Shader linearGradient = LinearGradient(
  colors: <Color>[Color.fromARGB(255, 96, 189, 196), Color(0xff8921aa)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

var blog= Get.find<BlogController>().blogList[pageId];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: 
                [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage("assets/images/gold.png"),
                      ),
                       border: Border.all(width: 1,color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade900,
                            blurRadius: 8,
                            offset: Offset(0,-1),
                          )
                        ]
                    ),
                    padding: EdgeInsets.only(left: 0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: double.maxFinite,
                      width: 60,
                      decoration: BoxDecoration(
                         color: Colors.blue.shade900,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                        border: Border.all(width: 1,color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade900,
                            blurRadius: 6,
                            offset: Offset(0,-1),
                          )
                        ]
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(() => BottomBar());
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color:  Colors.white,
                          ),
                      ),
                    ),  
                  ],
                ),
                ), 
               Expanded(
                 child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                   child: Container(
                     margin: EdgeInsets.only(left: 5,right: 5),
                     child: Column(
                       children: [
                          SizedBox(height: 15,),
                      RichText(text: TextSpan(
                        text: blog.title,style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                  width: double.maxFinite,
                                  height: 180,
                                  decoration: BoxDecoration(
                                image: DecorationImage(
                                fit: BoxFit.cover,
                              image: NetworkImage(
                               AppConstants.BASE_URL+blog.image.toString(),
                              ),
                              ),
                              ),
                                ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(blog.title.toString(),style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Html(data: blog.content,),
                            ],
                          ),
                          SizedBox(height: 10,),
                         DefaultTabController(
                            length: 4,
                           child: Column(
                             children: [
                               SizedBox(height: 5,),
                               RichText(text: TextSpan(
                        text: "More News",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = linearGradient),
                        ),
                      ),
                      SizedBox(height: 5,),
                      RecentPage(),
                             ],
                           ),
                         ),
                        ],
                      ),
                       ],
                     ),
                   ),
                 ),
               ),
                ] 
      ),
       floatingActionButton: Container(
          height: 60,
          width: 120,
          child: FloatingActionButton(
            backgroundColor: Colors.blue.shade900,
            onPressed: (){
              Get.to(()=>ApplyPage());
            },
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              "Apply Now",
            style: TextStyle(
              fontSize: 20,
            ),
            ),
          ),
        ),
      ),
    );
  }
}