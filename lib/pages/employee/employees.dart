import 'package:flutter/material.dart';
import 'package:thadri/utils/app_constants.dart';
import 'package:thadri/widgets/texts/big_text.dart';
import 'package:thadri/widgets/texts/small_text.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({ Key? key }) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text("सबै कर्मचारीको विवरण")),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.blue.shade900.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              ListView.builder(
                          shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 10,
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
                            color: Colors.blueGrey.withOpacity(0.4),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROC3P4oT1XaUdhGo925uGeRwFOrSWcoLkStA&usqp=CAU",
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
                                  BigText(text:"प्रेम कुमार सिंह",color: Colors.black,),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            BigText(text: "सचिव",color: Colors.black45,size: 20,),
                           SizedBox(width: 5,),
                           BigText(text: "+977827261524",color: Colors.black45,size: 15),
                        ],
                         ),
                         SizedBox(height: 10,),
                        BigText(text: "darktornado42@gmail.com",color: Colors.black45,size: 15),
    
                                ],
                              ),
                            ),
                          ),
                        ),
                                    ],
                                  ),
                                ),
                              );
                          })
            ],
          ),
        ),
      ),
    );
  }
}