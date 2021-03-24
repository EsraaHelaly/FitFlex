import 'package:fitflex/models/SizeConfig.dart';
import 'package:fitflex/register_screens/info_signup/PageIndecator.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String levelText = "";
  Color container1 = ktextcolor;
  Color container2 = ktextcolor;
  Color container3 = ktextcolor;
  Color container4 = ktextcolor;
  Color container5 = ktextcolor;
  Color container6 = ktextcolor;
  Container1() {
    // setState(() {
    //   levelText = "I easily get out of breath while walking up of the stairs";
    //   container1 = Color(0xFFB9B9B9);
    //   container2 = ktextcolor;
    //   container3 = ktextcolor;
    //   container4 = ktextcolor;
    //   container5 = ktextcolor;
    //   container6 = ktextcolor;
    // });
  }

  Container2() {
    // setState(() {
    //   levelText = "My heartbeat raise after doning several jummping jacks ";
    //   container1 = Color(0xFFB9B9B9);
    //   container2 = Color(0xFFB9B9B9);
    //   container3 = ktextcolor;
    //   container4 = ktextcolor;
    //   container5 = ktextcolor;
    //   container6 = ktextcolor;
    // });
  }

  Container3() {
    // setState(() {
    //   levelText = "Sometimes i do quick workouts to get my body moving ";
    //   container1 = Color(0xFFB9B9B9);
    //   container2 = Color(0xFFB9B9B9);
    //   container3 = Color(0xFFB9B9B9);
    //   container4 = ktextcolor;
    //   container5 = ktextcolor;
    //   container6 = ktextcolor;
    // });
  }

  Container4() {
    // setState(() {
    //   levelText = "I exercise regularly at least 2-3 times a week ";
    //   container1 = Color(0xFFB9B9B9);
    //   container2 = Color(0xFFB9B9B9);
    //   container3 = Color(0xFFB9B9B9);
    //   container4 = Color(0xFFB9B9B9);
    //   container5 = ktextcolor;
    //   container6 = ktextcolor;
    // });
  }

  Container5() {
    // setState(() {
    //   levelText = "Fitness is essential part of my life";
    //   container1 = Color(0xFFB9B9B9);
    //   container2 = Color(0xFFB9B9B9);
    //   container3 = Color(0xFFB9B9B9);
    //   container4 = Color(0xFFB9B9B9);
    //   container5 = Color(0xFFB9B9B9);
    //   container6 = ktextcolor;
    // });
  }

  Container6() {
    // setState(() {
    //   levelText = "Fitness is a piece of cake for me";
    //   container1 = Color(0xFFB9B9B9);
    //   container2 = Color(0xFFB9B9B9);
    //   container3 = Color(0xFFB9B9B9);
    //   container4 = Color(0xFFB9B9B9);
    //   container5 = Color(0xFFB9B9B9);
    //   container6 = Color(0xFFB9B9B9);
    // });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Center(
          child: Text("CHOOSE YOUR FITNESS LEVEL", style: headertextstyle),
        ),
        Padding(
            padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 3.5)),
        Center(
            child: Text("Choose the discription that fit you most",
                textAlign: TextAlign.center, style: normaltext)),
        Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.safeBlockVertical * 3,
                bottom: SizeConfig.safeBlockVertical * 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  levelText =
                      "I easily get out of breath while walking up of the stairs";
                  container1 = Color(0xFFB9B9B9);
                  container2 = ktextcolor;
                  container3 = ktextcolor;
                  container4 = ktextcolor;
                  container5 = ktextcolor;
                  container6 = ktextcolor;
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 5,
                color: container1,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  levelText =
                      "My heartbeat raise after doning several jummping jacks ";
                  container1 = Color(0xFFB9B9B9);
                  container2 = Color(0xFFB9B9B9);
                  container3 = ktextcolor;
                  container4 = ktextcolor;
                  container5 = ktextcolor;
                  container6 = ktextcolor;
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 8,
                color: container2,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  levelText =
                      "Sometimes i do quick workouts to get my body moving ";
                  container1 = Color(0xFFB9B9B9);
                  container2 = Color(0xFFB9B9B9);
                  container3 = Color(0xFFB9B9B9);
                  container4 = ktextcolor;
                  container5 = ktextcolor;
                  container6 = ktextcolor;
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 11,
                color: container3,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  levelText = "I exercise regularly at least 2-3 times a week ";
                  container1 = Color(0xFFB9B9B9);
                  container2 = Color(0xFFB9B9B9);
                  container3 = Color(0xFFB9B9B9);
                  container4 = Color(0xFFB9B9B9);
                  container5 = ktextcolor;
                  container6 = ktextcolor;
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 14,
                color: container4,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  levelText = "Fitness is essential part of my life";
                  container1 = Color(0xFFB9B9B9);
                  container2 = Color(0xFFB9B9B9);
                  container3 = Color(0xFFB9B9B9);
                  container4 = Color(0xFFB9B9B9);
                  container5 = Color(0xFFB9B9B9);
                  container6 = ktextcolor;
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 17,
                color: container5,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  levelText = "Fitness is a piece of cake for me";
                  container1 = Color(0xFFB9B9B9);
                  container2 = Color(0xFFB9B9B9);
                  container3 = Color(0xFFB9B9B9);
                  container4 = Color(0xFFB9B9B9);
                  container5 = Color(0xFFB9B9B9);
                  container6 = Color(0xFFB9B9B9);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 20,
                color: container6,
              ),
            )
          ],
        ),
        Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 6,
                vertical: SizeConfig.safeBlockVertical * 8),
            alignment: Alignment.center,
            child: Text(levelText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kprimary,
                  fontSize: 17,
                ))),
      ],
    );
  }
}
