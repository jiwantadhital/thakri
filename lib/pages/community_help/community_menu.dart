import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class CommunityMenu extends StatelessWidget {
  const CommunityMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("सामाजिक सहयोग")),backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed(RouteHelper.getfamilyExpenses());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BigText(text: "पारीवारिक खर्च",color: Colors.white,),
                          Icon(Icons.arrow_forward,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BigText(text: "सामाजिक तथा सामुदायिक",color: Colors.white,),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BigText(text: "फोकलपर्सन",color: Colors.white,),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade900,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BigText(text: "सहयोगहरुको विवरण",color: Colors.white,),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}