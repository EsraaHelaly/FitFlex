import 'package:fitflex/register_screens/info_signup/components/indecator.dart';
import 'package:fitflex/screens/homescreen.dart';
import 'package:fitflex/models/SizeConfig.dart';
import 'package:fitflex/register_screens/info_signup/PageOne.dart';
import 'package:fitflex/register_screens/info_signup/PageThree.dart';
import 'package:fitflex/register_screens/info_signup/PageTwo.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';
import '../signup.dart';

class PageIndecator extends StatefulWidget {
  int _selectedpage;
  PageIndecator(this._selectedpage);
  @override
  _PageIndecatorState createState() => _PageIndecatorState();
}

class _PageIndecatorState extends State<PageIndecator> {
  int _selectedpage = 0;
  bool _visible = false;
  List pages = [PageOne(), PageTwo(), PageThree()];
  void initState() {
    super.initState();
    setState(() {
      _selectedpage = widget._selectedpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xFFE8E7DB),
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal * 5,
              vertical: SizeConfig.safeBlockVertical * 5,
            ),
            child: Column(children: [
              Row(
                children: [
                  backbutton(),
                  Expanded(child: Center(child: indecator(_selectedpage))),
                  Padding(padding: EdgeInsets.only(right: 44))
                ],
              ),
              SizedBox(height: 25, width: SizeConfig.safeBlockVertical * 100),
              pages[_selectedpage],
              SizedBox(height: 50, width: SizeConfig.safeBlockVertical * 100),
              Expanded(
                  child: Align(
                child: next_button(),
                alignment: Alignment.bottomCenter,
              ))
            ])));
  }

  Widget next_button() {
    if (_selectedpage != 0) {
      setState(() {
        _visible = true;
      });
    }
    if (_selectedpage == 0) {
      setState(() {
        _visible = false;
      });
    }
    return Visibility(
        visible: _visible,
        child: ElevatedButton(
            child: Text(
              "Next",
            ),
            style: ElevatedButton.styleFrom(
              primary: kprimarylight,
              textStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
              padding: EdgeInsets.symmetric(horizontal: 125, vertical: 12),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              if (_selectedpage == 2) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              } else {
                setState(() {
                  _selectedpage++;
                });
              }
            }));
  }

  Widget backbutton() {
    return IconButton(
        iconSize: 25,
        color: kprimary,
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          if (_selectedpage == 0) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return SignUpPage();
            }));
          } else {
            setState(() {
              _selectedpage--;
            });
          }
        });
  }
}
