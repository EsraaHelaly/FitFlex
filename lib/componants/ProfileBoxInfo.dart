import 'package:flutter/material.dart';

import '../constants.dart';

Widget infobox(double age, double weight, double grouth) {
  return Container(
    height: 65,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
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
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          colmtext(age, " Age "),
          Expanded(child: SizedBox()),
          colmtext(weight, "Weight"),
          Expanded(child: SizedBox()),
          colmtext(grouth, "Grouth"),
        ],
      ),
    ),
  );
}

Widget colmtext(double text, String info) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text.toString(),
        style: TextStyle(
            color: ktextcolor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      Text(
        info,
        style: TextStyle(
            color: ktextcolor, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
