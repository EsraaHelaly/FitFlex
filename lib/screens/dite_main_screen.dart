import 'package:fitflex/screens/meals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';
import '../homescreen.dart';

// ignore: camel_case_types
// ignore: must_be_immutable
class DiteScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String Breakfast = "Breakfast";
  // ignore: non_constant_identifier_names
  String Lunch = "Lunch";
  // ignore: non_constant_identifier_names
  String Dinner = "Dinner";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kbackgroundcolor,
        shadowColor: kbackgroundcolor,
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: kprimary,
            size: 40,
          ),
        ),
      ),
      backgroundColor: Color(0xFFE7E7DB),
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Diet Plan",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF5767A3),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 400,
                width: 380,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Meals(
                                    name: Breakfast,
                                  ),
                                ));
                          },
                          child: ListTile(
                            leading: Container(
                              width: 60,
                              height: 100,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0KYT0fgQFHwA6gWgZC9uGdC6HW1zvwWblA&usqp=CAU"),
                                ),
                              ),
                            ),
                            title: Text(
                              Breakfast,
                              style: TextStyle(
                                  color: Color(0xFF5767A3),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 27),
                            ),
                            subtitle: Text(
                              "Egg Omelet With Vegetables",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Meals(name: Lunch)));
                          },
                          child: ListTile(
                            leading: Container(
                              width: 60,
                              height: 100,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0KYT0fgQFHwA6gWgZC9uGdC6HW1zvwWblA&usqp=CAU"),
                                ),
                              ),
                            ),
                            title: Text(
                              Lunch,
                              style: TextStyle(
                                  color: Color(0xFF5767A3),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 27),
                            ),
                            subtitle: Text(
                              "Grilled Sh",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Meals(name: Dinner)));
                          },
                          child: ListTile(
                            leading: Container(
                              width: 60,
                              height: 100,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0KYT0fgQFHwA6gWgZC9uGdC6HW1zvwWblA&usqp=CAU"),
                                ),
                              ),
                            ),
                            title: Text(
                              Dinner,
                              style: TextStyle(
                                  color: Color(0xFF5767A3),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 27),
                            ),
                            subtitle: Text(
                              "Egg Omelet With Vegetables",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
