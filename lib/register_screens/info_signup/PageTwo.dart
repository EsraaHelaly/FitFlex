import 'package:fitflex/models/SizeConfig.dart';
import 'package:fitflex/screens/fitnees_level_chart.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class PageTwo extends StatelessWidget {
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
        FitneesLevelChart()
      ],
    );
  }
}
