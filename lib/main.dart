import 'package:fitflex/homescreen.dart';
import 'package:fitflex/screens/splashscreen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Amiri'),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(canvasColor: new Color(0xffE8E7DB)),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
  }
}
