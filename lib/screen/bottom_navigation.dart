import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'side_Navbar.dart';

class Bottom_Navigation_Page extends StatefulWidget {
  const Bottom_Navigation_Page({super.key});

  @override
  State<Bottom_Navigation_Page> createState() => _Bottom_Navigation_PageState();
}

class _Bottom_Navigation_PageState extends State<Bottom_Navigation_Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Side_NavBar(),

      /*  body: Center(
          child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.green,
            //fixedColor: kPrimaryColor,

            backgroundColor: Colors.white,

            items: [
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/bags.png',color: Colors.green,

                  height: 20,
                ),
                icon: Image.asset(
                  'assets/images/bag.png',
                  height: 20,

                ),
                label: "Dashboard",
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/boxes.png',color: Colors.green,
                  height: 20,
                ),
                icon: Image.asset(
                  'assets/images/box.png',
                  height: 20,
                ),
                label: "Orders",
              ),



              BottomNavigationBarItem(
                activeIcon: Image.asset(
                  'assets/images/user.png',color: Colors.green,
                  height: 20,
                ),
                icon: Image.asset(
                  'assets/images/user.png',
                  height: 20,
                ),
                label: "Profile",
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            }),  */
    );
  }
}
