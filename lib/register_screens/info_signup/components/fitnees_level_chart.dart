// import 'package:fitflex/constants.dart';
// import 'package:fitflex/models/LevelContainerColors.dart';
// import 'package:fitflex/models/SizeConfig.dart';
// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//
// class FitneesLevelChart extends StatefulWidget {
//   @override
//   _FitneesLevelChartState createState() => _FitneesLevelChartState();
// }
//
// class _FitneesLevelChartState extends State<FitneesLevelChart> {
//   LevelContainerColor _container = new LevelContainerColor(
//       " ",
//       ktextcolor,
//       ktextcolor,
//       ktextcolor,
//       ktextcolor,
//       ktextcolor,
//       ktextcolor,
//       false,
//       false,
//       false,
//       false,
//       false,
//       false);
//   double _radius = 3;
//   String level;
//   Color bordercolor = Color(0xFF757575);
//
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             InkWell(
//               onTap: () {
//                 level="level1";
//                 setState(() {
//                   _container = LevelContainerColor(
//                       " I easily get out of breath while walking up of the stairs",
//                       darkselver,
//                       ktextcolor,
//                       ktextcolor,
//                       ktextcolor,
//                       ktextcolor,
//                       ktextcolor,
//                       true,
//                       false,
//                       false,
//                       false,
//                       false,
//                       false);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: bordercolor),
//                   color: _container.container1,
//                   borderRadius: new BorderRadius.circular(_radius),
//                 ),
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 5,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             InkWell(
//               onTap: () {
//                 level="level2";
//                 setState(() {
//                   _container = LevelContainerColor(
//                       "My heartbeat raise after doning several jummping jacks",
//                       darkselver,
//                       darkselver,
//                       ktextcolor,
//                       ktextcolor,
//                       ktextcolor,
//                       ktextcolor,
//                       false,
//                       true,
//                       false,
//                       false,
//                       false,
//                       false);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: bordercolor),
//                   color: _container.container2,
//                   borderRadius: new BorderRadius.circular(_radius),
//                 ),
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 8,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             InkWell(
//               onTap: () {
//                 level="level3";
//                 setState(() {
//                   _container = LevelContainerColor(
//                       "Sometimes i do quick workouts to get my body moving",
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       ktextcolor,
//                       ktextcolor,
//                       ktextcolor,
//                       false,
//                       false,
//                       true,
//                       false,
//                       false,
//                       false);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: bordercolor),
//                   color: _container.container3,
//                   borderRadius: new BorderRadius.circular(_radius),
//                 ),
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 11,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             InkWell(
//               onTap: () {
//                 level="level4";
//                 setState(() {
//                   _container = LevelContainerColor(
//                       " I exercise regularly at least 2-3 times a week",
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       ktextcolor,
//                       ktextcolor,
//                       false,
//                       false,
//                       false,
//                       true,
//                       false,
//                       false);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: bordercolor),
//                   color: _container.container4,
//                   borderRadius: new BorderRadius.circular(_radius),
//                 ),
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 14,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             InkWell(
//               onTap: () {
//                level="level5";
//                 setState(() {
//                   _container = LevelContainerColor(
//                       "Fitness is essential part of my life",
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       ktextcolor,
//                       false,
//                       false,
//                       false,
//                       false,
//                       true,
//                       false);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: bordercolor),
//                   color: _container.container5,
//                   borderRadius: new BorderRadius.circular(_radius),
//                 ),
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 17,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             InkWell(
//               onTap: () {
//                 level="level6";
//
//                 setState(() {
//                   _container = LevelContainerColor(
//                       " Fitness is a piece of cake for me",
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       darkselver,
//                       false,
//                       false,
//                       false,
//                       false,
//                       false,
//                       true);
//                 });
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: bordercolor),
//                   color: _container.container6,
//                   borderRadius: new BorderRadius.circular(_radius),
//                 ),
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 20,
//               ),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 5,
//                 child:
//                     Visibility(visible: _container.v1, child: check_circle())),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             Container(
//                 width: SizeConfig.safeBlockHorizontal * 10,
//                 height: SizeConfig.safeBlockVertical * 5,
//                 child:
//                     Visibility(visible: _container.v2, child: check_circle())),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             Container(
//               width: SizeConfig.safeBlockHorizontal * 10,
//               height: SizeConfig.safeBlockVertical * 5,
//               child: Visibility(
//                 child: check_circle(),
//                 visible: _container.v3,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             Container(
//               width: SizeConfig.safeBlockHorizontal * 10,
//               height: SizeConfig.safeBlockVertical * 5,
//               child: Visibility(
//                 child: check_circle(),
//                 visible: _container.v4,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             Container(
//               width: SizeConfig.safeBlockHorizontal * 10,
//               height: SizeConfig.safeBlockVertical * 5,
//               child: Visibility(
//                 child: check_circle(),
//                 visible: _container.v5,
//               ),
//             ),
//             Padding(
//                 padding:
//                     EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 2)),
//             Container(
//               width: SizeConfig.safeBlockHorizontal * 10,
//               height: SizeConfig.safeBlockVertical * 5,
//               child: Visibility(
//                 child: check_circle(),
//                 visible: _container.v6,
//               ),
//             )
//           ],
//         ),
//         Container(
//             padding: EdgeInsets.only(
//                 left: SizeConfig.safeBlockHorizontal * 6,
//                 right: SizeConfig.safeBlockHorizontal * 6,
//                 top: SizeConfig.safeBlockVertical * 8),
//             alignment: Alignment.center,
//             child: Text(_container.levelText,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: kprimary,
//                   fontSize: 17,
//                 ))),
//       ],
//     );
//   }
//
//   Widget check_circle() {
//     return Icon(
//       MdiIcons.checkCircle,
//       color: Color(0xFF58D988),
//       size: 29,
//     );
//   }
// }
