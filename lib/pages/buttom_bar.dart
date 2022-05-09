import 'package:flutter/material.dart';
import 'package:thadri/pages/employee/employees.dart';
import 'package:thadri/pages/gallery/gallery_main.dart';
import 'package:thadri/pages/home_page.dart';
import 'package:thadri/pages/recent/recent_post.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
   int _selectedIndex =0;
  List pages=[
    HomePage(),
    GalleryPage(),
    RecentPage(),
    EmployeePage(),

  ];
  void onTapNav(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.red,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.photo_sharp),
          label: "ग्यालेरी",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_checkout),
          label: "Cart",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "कर्मचारी विवरण",
          ),
        ],
      ),
    );
  }
}