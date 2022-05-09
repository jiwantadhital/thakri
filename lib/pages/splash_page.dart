import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:thadri/pages/buttom_bar.dart';
import 'package:thadri/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;

  // Future<void> _loadResource()async{
  //   await Get.find<PopularProductController>().getPopularProductList();
  //   await Get.find<CartController>().cartRepo;
  // }

  @override
  void initState() {
    super.initState();
    // _loadResource();
    controller = AnimationController(vsync: this,duration: const Duration(seconds: 2))..forward();
    animation= CurvedAnimation(parent: controller, curve: Curves.easeInToLinear);
    Timer(Duration(seconds: 3),
    ()=>Get.to(()=>BottomBar())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: animation,
            child: Center(
              child: Image.asset("assets/images/nlogo.png",width: 200,),
              ),
          ),
        ],
      ),
    );
  }
}