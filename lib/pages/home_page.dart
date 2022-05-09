import 'package:flutter/material.dart';
import 'package:thadri/pages/apply/apply_page.dart';
import 'package:thadri/pages/carousel/sliderPage.dart';
import 'package:thadri/pages/recent/recent_post.dart';
import 'package:thadri/pages/study_in/study_in.dart';
import 'package:thadri/widgets/drawer/drawer_items.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final number = '9814948102';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: 200,
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Container(
              child: Drawer(
              child:DrawerWidget(
              ),
              ),
            ),
          ),
        ),
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          children: 
              [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage("assets/images/thadr.png"),
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
                         _scaffoldKey.currentState!.openDrawer();
                      },
                      child: const Icon(
                        Icons.list_outlined,
                        color:  Colors.white,
                        ),
                    ),
                  ),  
                ],
              ),
              ),  
              Expanded(
                child: Container(
                  color: Color.fromARGB(31, 158, 157, 157).withOpacity(0.1),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SliderPage(),
              SizedBox(height: 20,),
              Row(
                  children: 
                    const [
                       Expanded(
                         child: Divider(
                                         color: Colors.black,
                                       ),
                       ),
                       SizedBox(width: 5,),
                      Text("Abroad Study",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width: 5,),
                      Expanded(
                         child: Divider(
                           color: Colors.black,
                                       ),
                       ),
                  ],
              ),
              StudyIn(),
              SizedBox(height: 10,),
              Row(
                  children: 
                    const [
                       Expanded(
                         child: Divider(
                                         color: Colors.black,
                                       ),
                       ),
                       SizedBox(width: 5,),
                      Text("सुर्चना तथा जानकारी",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(width: 5,),
                      Expanded(
                         child: Divider(
                                         color: Colors.black,
                                       ),
                       ),
                  ],
              ),
              RecentPage(),
                      ],
                    ),
                  ),
                ),
              ),
              ],
        ),
        floatingActionButton: Container(
          height: 120,
          margin: EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
            height: 60,
            width: 120,
            child: FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: Colors.blue.shade900,
              onPressed: (){
                setState(() {
                launch('tel://$number');
                                  },);              },
           shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: RichText(text: TextSpan(
                children: [
                  WidgetSpan(child: Icon(Icons.phone),),
                
                ]
              ),),
           
            ),
          ),
            
            ],
          ),
        )
      ),
    );
  }
}