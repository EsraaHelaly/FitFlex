import 'package:fitflex/constants.dart';
import 'package:fitflex/Splash_screen/splashscreen2.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero',
      child: SplashScreenView(
        home: SplashScreen2(),
        duration: 3000,
        imageSize: 100,
        imageSrc: "images/logo.png",
        text: "FITFLEX",
        textType: TextType.ScaleAnimatedText,
        textStyle: TextStyle(
          color: ktextcolor,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: new Color(0xffE8E7DB),
      ),
    );
  }
}
