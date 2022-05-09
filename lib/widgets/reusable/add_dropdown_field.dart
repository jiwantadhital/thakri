import 'package:flutter/material.dart';


class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
  
  
}
class DropdownField extends StatefulWidget {
  final String hintText;
final IconData? icon;
List<Item>? users = <Item>[];
final Item? myvalue;
  DropdownField({ Key? key,required this.hintText,this.icon,this.users,this.myvalue}) : super(key: key);

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
Item? selectedUser;
  

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
              child: DropdownButton<Item>(
                
            hint:  RichText(text: TextSpan(
              children: [
                WidgetSpan(child: Icon(widget.icon,color: Colors.red,)),
                TextSpan(text: widget.hintText,style: TextStyle(color: Colors.black)),
              ]
            ),),
            value: selectedUser,
            isExpanded: true,
            underline: SizedBox(),
            onChanged: (Item? thevalue) {
              setState(() {
                selectedUser = thevalue;
                
              });
            },
            items: widget.users?.map((Item user) {
              return  DropdownMenuItem<Item>(
                value: user,
                child: Row(
                  children: <Widget>[
                    user.icon,
                    SizedBox(width: 10,),
                    Text(
                      user.name,
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



      