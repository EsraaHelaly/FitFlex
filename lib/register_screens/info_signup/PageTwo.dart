import 'package:fitflex/models/SizeConfig.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String levelText = "";
  Color container1 = Color(0xFF404E5C);
  Color container2 = Color(0xFF404E5C);
  Color container3 = Color(0xFF404E5C);
  Color container4 = Color(0xFF404E5C);
  Color container5 = Color(0xFF404E5C);
  Color container6 = Color(0xFF404E5C);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFE7E7DB),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal * 5,
          vertical: SizeConfig.safeBlockVertical * 10,
        ),
        child: Column(
          children: [
            Center(
              child: Text("CHOOSE YOUR FITNESS LEVEL",
                  style: TextStyle(
                      color: Color(0xFF393939),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: SizeConfig.safeBlockVertical * 3.5)),
            Center(
                child: Text(
              "Choose the discription that fit you most",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF5E6EA4),
                fontSize: 15,
              ),
            )),
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
                    levelText =
                        "I easily ger out of breath while walking up of ht stairs";
                    container1 = Color(0xFFB9B9B9);
                  },
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 5,
                    color: container1,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  onTap: () {
                    levelText =
                        "My heartbeat raise after doning several jummping jacks ";
                    container1 = Color(0xFFB9B9B9);
                    container2 = Color(0xFFB9B9B9);
                  },
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 8,
                    color: container2,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  onTap: () {
                    levelText =
                        "Sometimes i do quick workouts to get my body moving ";
                    container1 = Color(0xFFB9B9B9);
                    container2 = Color(0xFFB9B9B9);
                    container3 = Color(0xFFB9B9B9);
                  },
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 11,
                    color: container3,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  onTap: () {
                    levelText =
                        "I exercise regularly at least 2-3 times a week ";
                    container1 = Color(0xFFB9B9B9);
                    container2 = Color(0xFFB9B9B9);
                    container3 = Color(0xFFB9B9B9);
                    container4 = Color(0xFFB9B9B9);
                  },
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 14,
                    color: container4,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  onTap: () {
                    levelText = "Fitness is essential part of my life";
                    container1 = Color(0xFFB9B9B9);
                    container2 = Color(0xFFB9B9B9);
                    container3 = Color(0xFFB9B9B9);
                    container4 = Color(0xFFB9B9B9);
                    container5 = Color(0xFFB9B9B9);
                  },
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 17,
                    color: container5,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  onTap: () {
                    levelText = "Fitness is a piece of cake for me";
                    container1 = Color(0xFFB9B9B9);
                    container2 = Color(0xFFB9B9B9);
                    container3 = Color(0xFFB9B9B9);
                    container4 = Color(0xFFB9B9B9);
                    container5 = Color(0xFFB9B9B9);
                    container6 = Color(0xFFB9B9B9);
                  },
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 20,
                    color: container6,
                  ),
                )
              ],
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: SizeConfig.safeBlockVertical * 8)),
            Center(
                child: Text(levelText,
                    style: TextStyle(
                      color: Color(0xFF5767A3),
                      fontSize: 17,
                    ))),
          ],
        ),
      ),
    );
  }
}
