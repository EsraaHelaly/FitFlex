import 'package:fitflex/componants/workouts_container.dart';
import 'package:fitflex/constants.dart';
import 'package:flutter/material.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kbackgroundcolor,
        shadowColor: kbackgroundcolor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: kprimary,
            size: 40,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textfitflex,
            SizedBox(height: 53),
            Text(
              "Yoga's Wourkouts",
              style: TextStyle(
                  color: ktextcolor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            WourkoutsContainer(
              txt: "Child's Pose",
              imgurl: 'images/yoga1.jpg',
              width: 95,
              press: () {},
            ),
            WourkoutsContainer(
              txt: "Wind-Relieving Pose",
              imgurl: 'images/yoga2.jpg',
              width: 30,
              press: () {},
            ),
            WourkoutsContainer(
              txt: "Spinal Twist Pose ",
              imgurl: 'images/yoga3.jpg',
              width: 50,
              press: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 85),
              child: WourkoutsContainer(
                txt: "Standing Forward \n Bend Pose",
                imgurl: 'images/yoga4.jpg',
                width: 50,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
