import 'package:flutter/material.dart';
import 'package:thadri/widgets/texts/big_text.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text('Terms & Conditions'),),
      ),
      body: Container(
        child: Column(
          children: [
            Image(image: AssetImage("assets/images/gold.png"),),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Text("What are Terms and Conditions Agreements?A Terms and Conditions agreement acts as legal contracts between you (the company) who has the website or mobile app, and the user who accesses your website/app.Having a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR).Your Terms and Conditions agreement will be uniquely yours. While some clauses are standard and commonly seen in pretty much every Terms and Conditions agreement, it's up to you to set the rules and guidelines that the user must agree to.You can think of your Terms and Conditions agreement as the legal agreement where you maintain your rights to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.",style: TextStyle(
                fontSize: 15,
              ),),
            )
          ],
        ),
      ),
    );
  }
}