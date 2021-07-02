import 'package:fitflex/register_screens/info_signup/PageIndecator.dart';
import 'package:fitflex/service/model/model_data.dart';
import 'package:flutter/material.dart';
import 'package:fitflex/models/SizeConfig.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../constants.dart';

class PageOne extends StatefulWidget {
  Data_user data_user;
  PageOne({this.data_user});


  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  String female="Female";
  String male="male";

  Decoration gendercircle =
      BoxDecoration(color: Color(0xFF5767A3), shape: BoxShape.circle);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Padding(padding: EdgeInsets.only(top: 88)),
        Center(
          child: Text(
            "WHAT'S YOUR GENDER?",
            style: headertextstyle,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 3.5)),
        Text(
            "We will personalize your workout program based on a few questions.",
            textAlign: TextAlign.center,
            style: normaltext),
        Padding(padding: EdgeInsets.only(top: 109)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gendericon(
                Icon(
                  MdiIcons.genderMale,
                  color: Color(0xFFB6BDC2),
                  size: 70,
                ),
                "$male"),
            Padding(padding: EdgeInsets.only(right: 19)),
            gendericon(
                Icon(
                  MdiIcons.genderFemale,
                  color: Color(0xFFB6BDC2),
                  size: 70,
                ),
                "$female"),
          ],
        )
      ],
    );
  }

  Widget gendericon(Icon icon, String gender) {
    return Column(children: [
      InkWell(
        onTap: () {
          if(gender=="$male"){
            widget.data_user.gender=male;


            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {

                  return PageIndecator(1 ,data_user: widget.data_user);
                }));

          } else if(gender=="$female"){
            widget.data_user.gender=female;
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return PageIndecator(1,data_user: widget.data_user);
                }));
          }

        },
        child: Container(
            width: 116, height: 116, decoration: gendercircle, child: icon),
      ),
      Padding(padding: EdgeInsets.only(top: 11)),
      Text(gender, style: normaltext)
    ]);
  }
}
