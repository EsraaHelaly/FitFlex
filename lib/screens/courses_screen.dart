import 'package:fitflex/constants.dart';
import 'package:fitflex/screens/workouts_main_screen.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textfitflex,
            SizedBox(height: 53),
            Text(
              'Select your course',
              style: TextStyle(
                color: ktextcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            buildCourseContainer(
              'Yoga',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return WorkoutsScreen();
                  }),
                );
              },
            ),
            SizedBox(height: 50),
            buildCourseContainer('Cardio', () {}),
            SizedBox(height: 50),
            buildCourseContainer('Gymnastics', () {}),
          ],
        ),
      ),
    );
  }

  Container buildCourseContainer(String txt, Function press) {
    return Container(
      width: 332,
      height: 85,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
          color: kprimarylight,
          onPressed: press,
          child: Text(
            txt,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
