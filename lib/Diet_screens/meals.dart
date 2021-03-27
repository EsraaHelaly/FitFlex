import 'package:fitflex/Diet_screens/detalis_meals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
// ignore: must_be_immutable
class Meals extends StatelessWidget {
  String name;
  Meals({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE7E7DB),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE7E7DB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
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
                        borderRadius: BorderRadius.circular(30.0)),
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
                                      builder: (context) => Detalis_Meals()));
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
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0KYT0fgQFHwA6gWgZC9uGdC6HW1zvwWblA&usqp=CAU")))),
                              title: Text(
                                "Meals 1",
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
                                      builder: (context) => Detalis_Meals()));
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
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0KYT0fgQFHwA6gWgZC9uGdC6HW1zvwWblA&usqp=CAU")))),
                              title: Text(
                                "Meals 2",
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
                                      builder: (context) => Detalis_Meals()));
                            },
                            child: ListTile(
                              leading: Container(
                                  width: 60.0,
                                  height: 100.0,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE0KYT0fgQFHwA6gWgZC9uGdC6HW1zvwWblA&usqp=CAU")))),
                              title: Text(
                                "Meals 3",
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
      ),
    );
  }
}
