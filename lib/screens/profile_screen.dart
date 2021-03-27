import 'package:fitflex/componants/ProfileBoxInfo.dart';
import 'package:fitflex/componants/ProfileTodayActivity.dart';
import 'package:fitflex/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundcolor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 40, left: 15, right: 15),
        decoration: backgroundpic,
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      color: ktextcolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(46),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://freepngimg.com/thumb/girl/22160-2-sad-girl-thumb.png'),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'Reem Nader',
                  style: TextStyle(
                      color: ktextcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Toreel | Mansoura',
                  style: TextStyle(
                      color: ktextcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 14,
                ),
                infobox(25, 57, 120), //box info card for age , etc
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Today's activities",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ktextcolor,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                activity(
                    "45 min running",
                    "1.5 km ",
                    Icon(
                      MdiIcons.run,
                      color: Color(0xff000000),
                    )),
                activity("60 min walking", "1.0 km ",
                    Icon(MdiIcons.walk, color: Color(0xff000000))), //listtile
                activity("30 min biking", "4.5 km ",
                    Icon(MdiIcons.bike, color: Color(0xff000000))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
