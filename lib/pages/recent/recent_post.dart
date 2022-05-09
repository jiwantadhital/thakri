import 'package:flutter/material.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/pages/recent/recent_details.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/utils/app_constants.dart';
import 'package:thadri/widgets/texts/big_text.dart';
import 'package:thadri/widgets/texts/small_text.dart';
import 'package:get/get.dart';
import 'package:flutter_html/flutter_html.dart';


class RecentPage extends StatelessWidget {
  const RecentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogController>(builder: (blog){
      return blog.isLoaded?Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: blog.blogList.length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Get.toNamed(RouteHelper.getBlog(index));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 11,
                              offset: Offset(0, 1)
                            )
                          ],
                          ),
                          margin: EdgeInsets.only(right: 10,left: 10),
                          height: 160,
                          width: MediaQuery.of(context).size.width,
                         child: Row(
                                  children: 
                                    [
                                          Container(
                        height: 145,
                        width: 120,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                          color: Colors.white38,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              AppConstants.MAIN_URL+blog.blogList[index].image.toString(),
                            ),
                            ),
                        ),
                                          ),
                       Expanded(
                        child: Container(
                          height: 145,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text:blog.blogList[index].title.toString(),color: Colors.black,),
                                SizedBox(height: 3,),
                                Container(
                                  height: 72,
                                  child: Html(data: blog.blogList[index].content, )),
                                // SmallText(size: 14,text: blog.blogList[index].content.toString(),color: Colors.black38,),
                                SizedBox(height: 3,),
                                Row(
                                          children: [
                        Wrap(
                          children: [
                         SmallText(text: "1.2k",color: Colors.black38,),
                         SizedBox(width: 2,),
                         SmallText(text: "Views",color: Colors.black38,),
                                          ],
                                    ),
                              ],
                            ),
                              ]
                          ),
                        ),
                                          ),)
                                  ],
                                ),
                        ),
                      );
                    },
                  )
                ],
              ):CircularProgressIndicator(color: Colors.red,);
    });
  }
}