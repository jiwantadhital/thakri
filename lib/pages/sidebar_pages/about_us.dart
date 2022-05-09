import 'package:flutter/material.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('About Us'),),
      ),
      body: Container(
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/gold.png"),),
            BigText(text: "Introduction: ",color: Colors.black),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Text("Goldmine Educational Consultancy IsOne of The Finest and Well-Known Consultancy of Nepal Located in Thapathali, Kathmandu, Which Aims to Provides Complete Guidance, Support to Students, Workers and Visitors Who Are Seeking for Educational Degree, Job Opportunity and Various Visas In Abroad According To Their Wishes. We Love What We Do and We Do It with Passion, We Value Your Passion Too and Experiment, Guide You Accordingly. We Believe Our Smart Work and Research. Our Consultancy Has Single Minded Focus; To Guide Students and Workers to The Best Possible Institutions & Job to Enable Them to Build Their Future. Using Our Expertise and Vast Experience, We Can Identify the Most Suitable Institutions for Each Student. Our Excellent Network with The Canadian Institutions Helps Us to Deliver the Best Services To Our Students Too.",style: TextStyle(
                fontSize: 15,
              ),),
            )
          ],
        ),
      ),
    );
  }
}