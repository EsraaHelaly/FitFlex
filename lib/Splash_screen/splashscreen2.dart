import 'package:fitflex/register_screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:fitflex/componants/roundedbutton.dart';
import 'package:fitflex/register_screens/login.dart';

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: new Color(0xffE8E7DB),
        primaryColor: new Color(0xffE8E7DB),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/splash2.jpeg"), fit: BoxFit.fill),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'hero',
                    child: Text(
                      'FITFLEX',
                      style: TextStyle(
                          color: new Color(0xff2F4054),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 80),
                  Image.asset("images/yoga.png",
                      fit: BoxFit.cover, height: 265),
                  SizedBox(height: 52),
                  RoundedButton(
                      txt: "Sign Up",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpPage();
                        }));
                      }),
                  SizedBox(height: 20),
                  RoundedButton(
                      txt: "Log In ",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
