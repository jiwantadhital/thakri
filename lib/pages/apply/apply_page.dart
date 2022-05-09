import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:thadri/pages/apply/api.dart';
import 'package:thadri/routes/route_helper.dart';
import 'package:thadri/widgets/reusable/add_text_field.dart';
import 'package:get/get.dart';



class ApplyPage extends StatefulWidget {
  const ApplyPage({ Key? key }) : super(key: key);

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
   String? _country;
  String? _course;
  String? _education;
  String? _intake;
  bool value = false;
   var emailController=TextEditingController();
    var firstnameController=TextEditingController();
    var lastnameController=TextEditingController();
    var phoneController=TextEditingController();
    var gpaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   

    _apply()async{
      var data = {
        'fname' : firstnameController.text,
        'lname' : lastnameController.text,
        'email' : emailController.text,
        'gpa' : gpaController.text,
        'phone' : phoneController.text,
        'country' : _country,
        'course' : _course,
        'education' : _education,
        'intake' : _intake,
      };
      var res = await CallApi().postData(data, 'apply-online');
      var body = jsonDecode(res.body);
      if(body['success']){
        Get.snackbar("Success!! ", "Your application has been submitted. Our team will contact you shortly",backgroundColor: Colors.red,colorText: Colors.white,);
        Get.toNamed(RouteHelper.initial);
      }
      else{
        print('error');
      }
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("APPLY-ONLINE",style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20,),
                AddTextField(textController: firstnameController, hintText: "First Name",icon: Icons.person,),
              SizedBox(height: 20,),
              AddTextField(textController: lastnameController, hintText: "Last Name",icon: Icons.person,),
              SizedBox(height: 20,),
              AddTextField(textController: emailController, hintText: "Email",icon: Icons.email),
              SizedBox(height: 20,),
              AddTextField(textController: phoneController, hintText: "Phone",icon: Icons.phone,),
              SizedBox(height: 20,),
              AddTextField(textController: gpaController, hintText: "Your GPA",icon: Icons.grade,),
                SizedBox(height: 20,),
               DropdownField(myvalue: (value){setState(() {
                _education = value.toString();
                 });},icon: Icons.school,hintText: 'Education Level',users: const [
                'Diploma Only',
                'diploma+Bachelor',
                'Direct Bachelor',
                'PHD',
                'Master',
                 ],
                 ),
              SizedBox(height: 20,),
              DropdownField(myvalue: (value){setState(() {
                   _course = value.toString();
                 });},icon: Icons.book,hintText: 'Select Courses',users: const [
                   'Online Degree',
                   'English Language',
                   'Test Preparation',
                 ],),
         SizedBox(height: 20,),
              DropdownField(myvalue: (value){setState(() {
                   _country = value.toString();
                 });},icon: Icons.location_city,hintText: 'Select Country',users: const [
                   'USA',
                   'Canada',
                   'New-Zealand',
                   'UK',
                   'Australia',
                 ],),
               SizedBox(height: 20,),
               DropdownField(myvalue: (value){setState(() {
                   _intake = value.toString();
                 });},icon: Icons.date_range,hintText: 'Intake',users: const [
                   'Jan-Mar',
                   'Apr-Jun',
                   'July-Sep',
                   'Oct-Dec',
                 ],),
             
                   SizedBox(height: 20,),
            
              SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  _apply();
                },
                child: Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.withOpacity(0.8),
                  ),
                  child: Center(child: Text("Submit",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),),
                ),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
  
  
}
class DropdownField extends StatefulWidget {
  final String hintText;
final IconData? icon;
List users = [];
final void Function(Object?) myvalue;
  DropdownField({ Key? key,required this.hintText,this.icon,required this.users,required this.myvalue}) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
String? selectedUser;
  

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 7,
                  offset: Offset(1,10),
                  color: Colors.grey.withOpacity(0.2),
                )
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(left: 16,right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: DropdownButtonFormField(
                   decoration: InputDecoration(
                     focusedBorder: OutlineInputBorder(
                      
              borderSide: BorderSide(color: Colors.white)),
                enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white))),
            hint:  RichText(text: TextSpan(
              children: [
                WidgetSpan(child: Icon(widget.icon,color: Colors.red,)),
                TextSpan(text: widget.hintText,style: TextStyle(color: Colors.black)),
              ]
            ),),
            // value: selectedUser,
            isExpanded: true,
            // underline: SizedBox(),
            onChanged: widget.myvalue,
            items: widget.users.map(( user) {
              return  DropdownMenuItem(
                value: user,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Text(
                      user,
                      style:  TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
            ),
    );
  }
}
