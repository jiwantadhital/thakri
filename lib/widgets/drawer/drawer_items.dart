import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/routes/route_helper.dart';
import 'drawer_list.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
              padding: EdgeInsets.zero,
              children: [
                 DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 10,
                        spreadRadius: 7,
                      )
                    ]
                  ),
                  child: Container(
                    height: 20,
                    width: 20,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(width: 1,color: Colors.white,),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 7,
                          offset: Offset(1,1)
                        )
                      ],
                      image:DecorationImage(image: AssetImage(
                        "assets/images/icon.png"
                      ),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
               DrawerList(icon: Icons.self_improvement,iconColor: Colors.blue.shade900, text: "हाम्रा बारेमा",tap: (){Get.toNamed(RouteHelper.getAboutUs());},),
                DrawerList(icon: Icons.group,text: "समुह विवरण ",iconColor: Colors.blue.shade900,tap: (){Get.toNamed(RouteHelper.getcommunityMenu());}),
               DrawerList(icon: Icons.timer,text: "मासिक व्यवस्था ",iconColor: Colors.blue.shade900,tap: (){Get.toNamed(RouteHelper.getTermsPage());},),
                  DrawerList(icon: Icons.social_distance, text: "सामाजिक सहयोग ",iconColor: Colors.blue.shade900,tap: (){Get.toNamed(RouteHelper.getcommunityMenu());},),
               DrawerList(icon: Icons.download, text: "डाउनलोड  ",iconColor: Colors.blue.shade900,tap: (){Get.toNamed(RouteHelper.getTermsPage());},),
               DrawerList(icon: Icons.contact_page, text: "सम्पर्क",iconColor: Colors.blue.shade900,tap: (){Get.toNamed(RouteHelper.getapply());},),

              ],
            );
  }
}