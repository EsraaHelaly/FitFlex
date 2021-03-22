import 'package:fitflex/models/SizeConfig.dart';
import 'package:fitflex/register_screens/info_signup/PageOne.dart';
import 'package:fitflex/register_screens/info_signup/PageThree.dart';
import 'package:fitflex/register_screens/info_signup/PageTwo.dart';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_indicator/page_indicator.dart';

class PageViewInfo extends StatefulWidget {
  @override
  _PageViewInfoState createState() => _PageViewInfoState();
}

class _PageViewInfoState extends State<PageViewInfo> {
  PageController _pageController = new PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFE8E7DB),
      body: Padding(
        padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 4),
        child: Stack(children: [
          PageIndicatorContainer(
            child: PageView(
                onPageChanged: (int index) {
                  _currentPageNotifier.value = index;
                },
                allowImplicitScrolling: false,
                physics: new NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [PageOne(), PageTwo(), PageThree()]),
            align: IndicatorAlign.top,
            length: 3,
            indicatorSpace: 20.0,
            padding: const EdgeInsets.all(10),
            indicatorColor: Color(0xFF767676),
            indicatorSelectorColor: Color(0xFF91B3D9),
            shape: IndicatorShape.roundRectangleShape(
                size: Size.square(15), cornerSize: Size.square(2)),
          ), // info page

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(
                    MdiIcons.arrowLeft,
                    size: 30,
                    color: Color(0xFF5767A3),
                  ),
                  onPressed: () {
                    _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease);
                  }),
            ],
          ),

          Column(
            //next button
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: SizeConfig.safeBlockHorizontal * 8,
                ),
                child: Center(
                  child: ElevatedButton(
                    child: Text(
                      "Next",
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF91B3D9),
                      textStyle:
                          TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 125, vertical: 12),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
