import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class FamilyExpenses extends StatelessWidget {
  const FamilyExpenses({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("पारीवारिक खर्च")),backgroundColor: Colors.blue.shade900
      ),
      body: Zoom(
    maxZoomWidth: 1800,
    maxZoomHeight: 1800,
    onTap: (){
        print("Widget clicked");
    },
    onPositionUpdate: (Offset position){

        print(position);

    },
    onScaleUpdate: (double scale,double zoom){

        print("$scale  $zoom");

    },
    child: Center(
        child: Text("Happy zoom!!"),
    )
),
    );
  }
}