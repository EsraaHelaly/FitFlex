import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants.dart';

Widget activity(String min, String space, Icon icon) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
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
      child: ListTile(
        title: Text(
          min,
          style: profiletxtstyle,
        ),
        trailing: Text(
          space,
          style: profiletxtstyle,
        ),
        leading: icon,
      ),
    ),
  );
}
