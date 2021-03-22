import 'package:fitflex/models/SizeConfig.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String levelText = "helo";
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
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 5,
                    color: Color(0xFF404E5C),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 8,
                    color: Color(0xFF404E5C),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 11,
                    color: Color(0xFF404E5C),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 14,
                    color: Color(0xFF404E5C),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 17,
                    color: Color(0xFF404E5C),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 2)),
                InkWell(
                  child: Container(
                    width: SizeConfig.safeBlockHorizontal * 10,
                    height: SizeConfig.safeBlockVertical * 20,
                    color: Color(0xFF404E5C),
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
