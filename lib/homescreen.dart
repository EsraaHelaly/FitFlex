import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fitflex/constants.dart';
import 'package:flutter/material.dart';
import 'package:fitflex/screens/courses_screen.dart';
import 'package:fitflex/screens/dite_main_screen.dart';
import 'package:fitflex/screens/favorites_screen.dart';
import 'package:fitflex/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  List<Widget> _bottomNavScreens = <Widget>[
    CoursesScreen(),
    DiteScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: new Color(0xffE8E7DB)),
      home: Scaffold(
        body: _bottomNavScreens.elementAt(_currentIndex),
        backgroundColor: kbackgroundcolor,
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(Icons.home, color: kprimary),
            Icon(Icons.restaurant, color: kprimary),
            Icon(Icons.favorite, color: kprimary),
            Icon(Icons.person, color: kprimary),
          ],
          index: _currentIndex,
          onTap: _changeItem,
          height: 68,
          color: Colors.white,
          backgroundColor: kprimarylight,
          animationCurve: Curves.easeOutQuint,
          animationDuration: Duration(milliseconds: 400),
          // buttonBackgroundColor: kprimarylight,
        ),
      ),
    );
  }
}

