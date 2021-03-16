import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: new Color(0xffE8E7DB)),
      home: Scaffold(),
    );
  }
}
