import 'package:flutter/material.dart';

class Detalis_Meals extends StatelessWidget {
  // BestSelling model;
  // ProductDetails({this.model, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE7E7DB),
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Color(0xFF5767A3),
              )),
          backgroundColor: Color(0xFFE7E7DB),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.03),
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  width: double.infinity,
                  child: Image.network(
                   "https://post.healthline.com/wp-content/uploads/2020/09/healthy-eating-ingredients-1200x628-facebook-1200x628.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Oat Milk Bowls",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "20 minutes",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.local_fire_department),
                  SizedBox(
                    width: 5,
                  ),
                  Text("375 kcal",
                      style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      child: CircleAvatar(
                        backgroundColor: Colors.white70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "CARBS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5767A3)),
                            ),
                            Text(
                              "49.7g",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      child: CircleAvatar(
                        backgroundColor: Colors.white70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "FATS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5767A3)),
                            ),
                            Text(
                              "18.1g",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      child: CircleAvatar(
                        backgroundColor: Colors.white70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "PROTIEN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF5767A3)),
                            ),
                            Text(
                              "9.6g",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ingredients",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "-1 cup rolled oats",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text(
                        "Instructions",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                      Text("-1 cup rolled oats",
                          style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
