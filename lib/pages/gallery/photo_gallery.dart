import 'package:flutter/material.dart';
import 'package:thadri/widgets/texts/big_text.dart';
import 'package:thadri/widgets/texts/small_text.dart';

class PhotoGallery extends StatelessWidget {
   PhotoGallery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                ),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: GestureDetector(
                        onTap: (){
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        image: DecorationImage(image:AssetImage(
                                          "assets/images/thadrislide1.jpg",
                                        ),
                                        fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        padding: EdgeInsets.only(left: 5,bottom: 3),
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                        ),
                                        margin: EdgeInsets.only(top: 170),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 4,),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 350,
                                                  child: 
                                                  Text(
                                                  "औद्योगिकरणतर्फ उन्मुख गराई औद्योगिक विकास गर्न आवश्यक नीति",
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  style: TextStyle(
                                                  color: Colors.blue.shade900,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto',
                                                  fontSize: 20,
                                                    ),
                                                        ),
                                                ),
                                                   ],
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
            }),
      ),
    );
  }
}