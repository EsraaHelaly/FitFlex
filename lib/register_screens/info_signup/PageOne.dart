import 'package:flutter/material.dart';
import 'package:fitflex/models/SizeConfig.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
        backgroundColor: Color(0xFFE7E7DB),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal * 10,
            vertical: SizeConfig.safeBlockVertical * 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(padding: EdgeInsets.only(top: 88)),
              Center(
                child: Text(
                  "WHAT'S YOUR GENDER?",
                  style: TextStyle(
                      color: Color(0xFF393939),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding:
                      EdgeInsets.only(top: SizeConfig.safeBlockVertical * 3.5)),
              Text(
                "We will personalize your workout program based on a few questions.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF5E6EA4),
                  fontSize: 15,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 109)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    InkWell(
                      onTap: null,
                      child: Container(
                        width: 116,
                        height: 116,
                        decoration: BoxDecoration(
                            color: Color(0xFF5767A3), shape: BoxShape.circle),
                        child: Icon(
                          MdiIcons.genderMale,
                          color: Color(0xFFB6BDC2),
                          size: 70,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 11)),
                    Text("Male",
                        style: TextStyle(color: Color(0xFF5E6EA4), fontSize: 15))
                  ]),
                  Padding(padding: EdgeInsets.only(right: 19)),
                  Column(children: [
                    InkWell(
                      onTap: null,
                      child: Container(
                        width: 116,
                        height: 116,
                        decoration: BoxDecoration(
                            color: Color(0xFF5767A3), shape: BoxShape.circle),
                        child: Icon(
                          MdiIcons.genderFemale,
                          color: Color(0xFFB6BDC2),
                          size: 70,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 11)),
                    Text(
                      "Female",
                      style: TextStyle(color: Color(0xFF5E6EA4), fontSize: 15),
                    )
                  ]),
                ],
              )
            ],
          ),
        ),
      
    );
  }
}
