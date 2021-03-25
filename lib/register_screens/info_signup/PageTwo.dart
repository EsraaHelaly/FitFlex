import 'package:fitflex/models/LevelContainerColors.dart';
import 'package:fitflex/models/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  LevelContainerColor _container = new LevelContainerColor(" ", ktextcolor,
      ktextcolor, ktextcolor, ktextcolor, ktextcolor, ktextcolor);
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
                  _container = LevelContainerColor(
                      " I easily get out of breath while walking up of the stairs",
                      darkselver,
                      ktextcolor,
                      ktextcolor,
                      ktextcolor,
                      ktextcolor,
                      ktextcolor);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 5,
                color: _container.container1,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  _container = LevelContainerColor(
                      "My heartbeat raise after doning several jummping jacks",
                      darkselver,
                      darkselver,
                      ktextcolor,
                      ktextcolor,
                      ktextcolor,
                      ktextcolor);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 8,
                color: _container.container2,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  _container = LevelContainerColor(
                      "Sometimes i do quick workouts to get my body moving",
                      darkselver,
                      darkselver,
                      darkselver,
                      ktextcolor,
                      ktextcolor,
                      ktextcolor);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 11,
                color: _container.container3,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  _container = LevelContainerColor(
                      " I exercise regularly at least 2-3 times a week",
                      darkselver,
                      darkselver,
                      darkselver,
                      darkselver,
                      ktextcolor,
                      ktextcolor);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 14,
                color: _container.container4,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  _container = LevelContainerColor(
                      "Fitness is essential part of my life",
                      darkselver,
                      darkselver,
                      darkselver,
                      darkselver,
                      darkselver,
                      ktextcolor);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 17,
                color: _container.container5,
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
            InkWell(
              onTap: () {
                setState(() {
                  _container = LevelContainerColor(
                      " Fitness is a piece of cake for me",
                      darkselver,
                      darkselver,
                      darkselver,
                      darkselver,
                      darkselver,
                      darkselver);
                });
              },
              child: Container(
                width: SizeConfig.safeBlockHorizontal * 10,
                height: SizeConfig.safeBlockVertical * 20,
                color: _container.container6,
              ),
            )
          ],
        ),
        Container(
            padding: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 6,
                right: SizeConfig.safeBlockHorizontal * 6,
                top: SizeConfig.safeBlockVertical * 8),
            alignment: Alignment.center,
            child: Text(_container.levelText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kprimary,
                  fontSize: 17,
                ))),
      ],
    );
  }
}
