import 'package:flutter/material.dart';

const kbackgroundcolor = Color(0xffE8E7DB);
const kprimary = Color(0xff5767A3);
const kprimarylight = Color(0xff91B3D9);
const ktextcolor = Color(0xff2F4054);
const darkselver = Color(0xFFB9B9B9);

const double width = 342;
const double height = 54;

const headertextstyle = TextStyle(
    color: Color(0xFF393939),
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'Amiri');
const normaltext = TextStyle(
  color: Color(0xFF5E6EA4),
  fontSize: 15,
);
const textfitflex = Text(
  'FITFLEX',
  style: TextStyle(
      color: Color(0xff2F4054), fontSize: 40, fontWeight: FontWeight.bold),
);
const profiletxtstyle = TextStyle(
    color: Color(0xff2F4054), fontSize: 14, fontWeight: FontWeight.bold);
const backgroundpic = BoxDecoration(
    image: DecorationImage(
        image: AssetImage('images/login.jpeg'), fit: BoxFit.fill));
