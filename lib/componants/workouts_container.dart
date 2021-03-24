import 'package:fitflex/constants.dart';
import 'package:flutter/material.dart';

class WourkoutsContainer extends StatelessWidget {
  final String txt;
  final Function press;
  final String imgurl;
  final double width;
  const WourkoutsContainer({
    Key key,
    this.txt,
    this.press,
    this.imgurl,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 414,
        height: 95,
        child: Card(
          elevation: 2,
          color: kbackgroundcolor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                txt,
                style: TextStyle(
                    color: ktextcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: width),
              Container(
                width: 130,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(imgurl, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
