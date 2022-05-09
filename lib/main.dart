import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/controllers/abroad_study_controller.dart';
import 'package:thadri/controllers/blog_controller.dart';
import 'package:thadri/controllers/college_controller.dart';
import 'package:thadri/controllers/services_controller.dart';
import 'package:thadri/controllers/study_in_controllers.dart';
import 'package:thadri/pages/gallery/photo_gallery.dart';
import 'package:thadri/pages/home_page.dart';
import 'package:thadri/pages/splash_page.dart';
import 'package:thadri/pages/study_in/detail/study_in_detail.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'helper/dependencies.dart' as dep;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<StudyInController>().getStudyInList();
    Get.find<AbroadStudyController>().getabroadStudyList();
    Get.find<BlogController>().getblogList();
        Get.find<ServiceController>().getserviceList();
        Get.find<CollegeController>().getcollegeList();
    return GetBuilder<AbroadStudyController>(builder: (_){
    return GetBuilder<StudyInController>(builder: (_){
      return GetBuilder<BlogController>(builder: (_){
      return GetBuilder<ServiceController>(builder: (_){
        return GetBuilder<CollegeController>(builder: (_){
          return GetMaterialApp(
      builder:(context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     initialRoute: RouteHelper.getSplashPage(),
      getPages: RouteHelper.routes,
    );
        });
      });
    });
  });
    });
  }
}

//  debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),

