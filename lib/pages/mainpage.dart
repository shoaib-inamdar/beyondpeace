// import 'package:beyondpeace/components/bottomNavBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'dart:ui';

// import 'package:beyondpeace/components/bottomnav.dart';
// import 'package:beyondpeace/components/exercisecontainer.dart';
// import 'package:beyondpeace/components/musiccontainer.dart';
import 'package:beyondpeace/pages/homepage.dart';
import 'package:beyondpeace/pages/login.dart';
import 'package:beyondpeace/pages/mentalexercise.dart';
import 'package:beyondpeace/pages/music.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:beyondpeace/utils/routes.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mainpage extends StatefulWidget {
  Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedindex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final _pages = [Homepage(), Mentalexercise(), Music(), Login()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xfff4f5fa),
      body: _pages[_selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: [
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.file_copy, size: 30),
          Icon(Icons.settings, size: 30)
        ],
        onTap: _navigateBottomBar,
      ),
    );
  }
}


        // bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: _selectedindex,
        //     onTap: _navigateBottomBar,
        //     items: [
        //       BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.home,
        //             // color: Colors.green,
        //           ),
        //           label: 'home',
        //           backgroundColor: Colors.amber),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.search), label: 'search'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.drive_file_move_outline), label: 'file'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.ac_unit_rounded), label: 'anything'),
        //     ])