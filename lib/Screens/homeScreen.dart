import 'dart:ui';

import 'package:workoutapp/Screens/audioScreen.dart';
import 'package:workoutapp/Screens/diet.dart';
import 'package:workoutapp/Screens/firstPage.dart';
import 'package:workoutapp/Screens/tracker.dart';
import 'package:workoutapp/Widget/slider.dart';
import 'package:workoutapp/const/textstyle.dart';
import 'package:workoutapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int _currentPage = 0;
  final List<Widget> _pages = [
     
   FirstPage(),
   AudioScreen(),
   
    Diet(),
    Tracker(),
  ];
  double _volumeValue = 50;
void onVolumeChanged(double value) {
 setState(() {
    _volumeValue = value;
 }); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393871),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF393871)
        ),
              child: BottomNavigationBar(
          // backgroundColor: Colors.red,
            type: BottomNavigationBarType.shifting,
          backgroundColor: Color(0xFF393871),
          // fixedColor: Color(0xFF393871),
            selectedItemColor: Color(0xFF44C2EA),
            unselectedItemColor: Colors.grey[500],
            currentIndex: _currentPage,
            onTap: (i) {
              setState(() {
                _currentPage = i;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "asdasd",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "ries"),
             
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket),
                label: "asdasd",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
               label: "esada"),
             
            ],
          ),
      ),
      
   
   
       body: _pages[_currentPage],
    );
  }
}