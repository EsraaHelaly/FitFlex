import 'package:fitflex/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: new Color(0xffE8E7DB)),
      home: MyHomePage(),
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
      body: SplashScreen(
        backgroundColor: new Color(0xffE8E7DB),
        seconds: 3,
        useLoader: false,
        loadingText: Text('welcome'),
        title: Text('FITFLEX',
            style: TextStyle(
                color: new Color(0xff393939),
                fontSize: 40,
                fontWeight: FontWeight.bold)),
        navigateAfterSeconds: HomeScreen(),
      ),
    );
  }
}
