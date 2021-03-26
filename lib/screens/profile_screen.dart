import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    card({String imageurl, String time, String space}) {
      return Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: NetworkImage(imageurl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                "$time  min running",
                style: TextStyle(
                    color: Color(0xff2F4054),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox()),
              Text(
                "$space  Km",
                style: TextStyle(
                    color: Color(0xff2F4054),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login.jpeg'),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            children: [
              Text(
                'Profile',
                style: TextStyle(
                    color: Color(0xff2F4054),
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
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://freepngimg.com/thumb/girl/22160-2-sad-girl-thumb.png'),
                        fit: BoxFit.cover)),
              ),
              Text(
                'Reem Nader',
                style: TextStyle(
                    color: Color(0xff2F4054),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Toreel | Mansoura',
                style: TextStyle(
                  color: Color(0xff2F4054),
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '20',
                            style: TextStyle(
                                color: Color(0xff2F4054),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Age',
                            style: TextStyle(
                              color: Color(0xff2F4054),
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        children: [
                          Text(
                            '65',
                            style: TextStyle(
                                color: Color(0xff2F4054),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Weight',
                            style: TextStyle(
                              color: Color(0xff2F4054),
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        children: [
                          Text(
                            '160',
                            style: TextStyle(
                                color: Color(0xff2F4054),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Grouth',
                            style: TextStyle(
                              color: Color(0xff2F4054),
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Today's activities",
                    style: TextStyle(
                      color: Color(0xff2F4054),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              card(
                  imageurl:
                      'https://proofmart.com/wp-content/uploads/2020/10/man-running-symball-product.png',
                  time: '45',
                  space: '4.5'),
              SizedBox(
                height: 10,
              ),
              card(
                  imageurl:
                      'https://cdn.icon-icons.com/icons2/2518/PNG/512/walk_icon_151006.png',
                  time: '60',
                  space: '2.1'),
              SizedBox(
                height: 10,
              ),
              card(
                  imageurl:
                      'https://www.searchpng.com/wp-content/uploads/2019/02/Free-Cycle-Bicycle-Travel-Ride-Bike-Icon-PNG-Image-715x715.png',
                  time: '30',
                  space: '2.2')
            ],
          ),
        ),
      ),
    );
  }
}
