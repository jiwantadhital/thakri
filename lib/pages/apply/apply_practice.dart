// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:goldmine/pages/apply/api.dart';
// import 'package:goldmine/routes/route_helper.dart';
// import 'package:goldmine/widgets/reusable/add_dropdown_field.dart';
// import 'package:goldmine/widgets/reusable/add_text_field.dart';
// import 'package:goldmine/widgets/texts/big_text.dart';
// import 'package:get/get.dart';



// class ApplyPractice extends StatefulWidget {
//   const ApplyPractice({ Key? key }) : super(key: key);

//   @override
//   State<ApplyPractice> createState() => _ApplyPracticeState();
// }

// class _ApplyPracticeState extends State<ApplyPractice> {
//   String? _country;
//   String? _course;
//   bool value = false;
//   @override
//   Widget build(BuildContext context) {
//     var emailController=TextEditingController();
//     var firstnameController=TextEditingController();
//     var lastnameController=TextEditingController();
//     var phoneController=TextEditingController();
//     var gpaController = TextEditingController();

//     _apply()async{
//       var data = {
//         'fname' : firstnameController.text,
//         'lname' : lastnameController.text,
//         'email' : emailController.text,
//         'gpa' : gpaController.text,
//         'phone' : phoneController.text,
//         'country' : _country,
//       };
//       var res = await CallApi().postData(data, 'apply-online');
//       var body = jsonDecode(res.body);
//       if(body['success']){
//         Get.snackbar("Success!! ", "Your application has been submitted. Our team will contact you shortly",backgroundColor: Colors.red,colorText: Colors.white,);
//         Get.toNamed(RouteHelper.initial);
//       }
//       else{
//         print('error');
//       }
//     }
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               SizedBox(height: 20,),
//               Text("APPLY-ONLINE",style: TextStyle(
//                 fontSize: 26,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),),
//               SizedBox(height: 20,),
//               AddTextField(textController: firstnameController, hintText: "First Nam",icon: Icons.person,),
//               SizedBox(height: 20,),
//               AddTextField(textController: lastnameController, hintText: "Last Name",icon: Icons.person,),
//               SizedBox(height: 20,),
//               AddTextField(textController: emailController, hintText: "Email",icon: Icons.email),
//               SizedBox(height: 20,),
//               AddTextField(textController: phoneController, hintText: "Phone",icon: Icons.phone,),
//               SizedBox(height: 20,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//               //     Flexible( child: DropdownField( hintText: 'Select Education',icon: Icons.school,users: const [
//               //    Item('Diploma Only',Icon(Icons.school,color:  Colors.red),),
//               //    Item('diploma+Bachelor',Icon(Icons.school,color:  Colors.red),),
//               //    Item('Direct Bachelor',Icon(Icons.school,color:  Colors.red),),
//               //    Item('PHD',Icon(Icons.school,color:  Colors.red),),
//               //    Item('Master',Icon(Icons.school,color:  Colors.red),),
//               //  ],),),
//                   Flexible(child: AddTextField(textController: gpaController, hintText: "Your GPA",icon: Icons.grade,)),
//                 ]
//               ),
//               // SizedBox(height: 20,),
//               // DropdownField(hintText: 'Select Course',icon: Icons.book,users: const [
//               //    Item('Online Degree',Icon(Icons.book,color:  Colors.red),),
//               //    Item('English Language',Icon(Icons.book,color:  Colors.red),),
//               //    Item('Test Preparation',Icon(Icons.book,color:  Colors.red),),
//               //  ],),
        
//                SizedBox(height: 20,),
//                Container(
//                  child: DropdownField(myvalue: (value){setState(() {
//                    _country = value.toString();
//                  });},icon: Icons.location_city,hintText: 'Select Country',users: const [
//                    'USA',
//                    'Canada',
//                    'New-Zealand',
//                    'UK',
//                    'Australia',
//                  ],),
//                ),
//               //   SizedBox(height: 20,),
//               //  Container(
//               //    child: DropdownField(myvalue: (value1){setState(() {
//               //      _course1 = value1.toString();
//               //    });},icon: Icons.location_city,hintText: 'Select Country',users: const [
//               //      'USA1',
//               //      'Canada1',
//               //      'New-Zealand1',
//               //      'UK1',
//               //      'Australia1',
//               //    ],),
//               //  ),
               
//               // SizedBox(height: 20,),
//               //  DropdownField(icon: Icons.date_range,hintText: 'Intake',users: const [
//               //    Item('Jan-Mar',Icon(Icons.date_range,color:  Colors.red),),
//               //    Item('Apr-Jun',Icon(Icons.date_range,color:  Colors.red),),
//               //    Item('July-Sep',Icon(Icons.date_range,color:  Colors.red),),
//               //    Item('Oct-Dec',Icon(Icons.date_range,color:  Colors.red),),
//               //  ],),
//                 SizedBox(height: 20,),
//               Padding(
//                 padding: EdgeInsets.only(left: 15,right: 10),
//                 child: Row(
//                   children: [
//                     Checkbox(
//                       value: this.value, onChanged:  (bool? value) {
//                               setState(() {
//                                 this.value = value!;
//                               },
//                               );
//                               },
//                               ),
//                               BigText(text: "I accept all the terms and condition",color: Colors.black,),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 40,),
//               GestureDetector(
//                 onTap: (){
//                   _apply();
//                   // print(_course);
                                 

//                 },
//                 child: Container(
//                   width: 200,
//                   height: 60,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.red.withOpacity(0.8),
//                   ),
//                   child: Center(child: Text("Submit"),),
//                 ),
//               ),
//               SizedBox(height: 40,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Item {
//   const Item(this.name,this.icon);
//   final String name;
//   final Icon icon;
  
  
// }
// class DropdownField extends StatefulWidget {
//   final String hintText;
// final IconData? icon;
// List users = [];
// final void Function(Object?) myvalue;
//   DropdownField({ Key? key,required this.hintText,this.icon,required this.users,required this.myvalue}) : super(key: key);

//   @override
//   State<DropdownField> createState() => _DropdownFieldState();
// }

// class _DropdownFieldState extends State<DropdownField> {
// String? selectedUser;
  

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        margin: EdgeInsets.only(left: 20,right: 20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 10,
//                   spreadRadius: 7,
//                   offset: Offset(1,10),
//                   color: Colors.grey.withOpacity(0.2),
//                 )
//               ],
//             ),
//             child: Container(
//               padding: EdgeInsets.only(left: 16,right: 16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20)
//               ),
//               child: DropdownButtonFormField(
                
//             hint:  RichText(text: TextSpan(
//               children: [
//                 WidgetSpan(child: Icon(widget.icon,color: Colors.red,)),
//                 TextSpan(text: widget.hintText,style: TextStyle(color: Colors.black)),
//               ]
//             ),),
//             // value: selectedUser,
//             isExpanded: true,
//             // underline: SizedBox(),
//             onChanged: widget.myvalue,
//             items: widget.users.map(( user) {
//               return  DropdownMenuItem(
//                 value: user,
//                 child: Row(
//                   children: <Widget>[
//                     SizedBox(width: 10,),
//                     Text(
//                       user,
//                       style:  TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//             ),
//     );
//   }
// }



      