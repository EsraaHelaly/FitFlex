import 'package:fitflex/register_screens/info_signup/components/indecator.dart';
import 'package:fitflex/screens/homescreen.dart';
import 'package:fitflex/models/SizeConfig.dart';
import 'package:fitflex/register_screens/info_signup/PageOne.dart';
import 'package:fitflex/register_screens/info_signup/PageThree.dart';
import 'package:fitflex/register_screens/info_signup/PageTwo.dart';
import 'package:fitflex/service/API/Network_class.dart';
import 'package:fitflex/service/model/model_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';
import '../signup.dart';

class PageIndecator extends StatefulWidget {
  int _selectedpage;
  Data_user data_user;

  PageIndecator(this._selectedpage, {@required this.data_user});
  @override
  _PageIndecatorState createState() => _PageIndecatorState();
}

class _PageIndecatorState extends State<PageIndecator> {
  API_Service api_service = API_Service();
  int _selectedpage = 0;
  bool _visible = false;
  bool isloading = false;
  bool loginError = false;

  void initState() {
    super.initState();
    setState(() {
      _selectedpage = widget._selectedpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      PageOne(
        data_user: widget.data_user,
      ),
      PageTwo(
        data_user: widget.data_user,
      ),
      PageThree()
    ];
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xFFE8E7DB),
        body: isloading ? _drawLoading() : List_levels(pages));
  }

  Widget List_levels(List pages) {
    if (loginError) {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login Error ",
                style: TextStyle(fontSize: 25.0),
              ),
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    loginError = false;
                  });
                },
                child: Text(
                  "Try Again",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      );
    }
    return Padding(
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
        ]));
  }

  Widget _drawLoading() {
    return Container(
        child: Center(
      child: CircularProgressIndicator(),
    ));
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
            onPressed: () async {

              var respons= await api_service.registrastion_User(
                  widget.data_user.username,
                  widget.data_user.email,
                  widget.data_user.gender,
                  widget.data_user.levele,
                  widget.data_user.password);



              if (_selectedpage == 1&&respons) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              } else {
           return Navigator.push(context, MaterialPageRoute(builder: (ctx)=> Material(
             child: Container(
               child: Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text(
                       "Register Error ",
                       style: TextStyle(fontSize: 25.0),
                     ),
                     RaisedButton(
                       color: Colors.red,
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SignUpPage()));
                       },
                       child: Text(
                         "Try Again",
                         style: TextStyle(color: Colors.white),
                       ),
                     )
                   ],
                 ),
               ),
             ),
           )))    ;


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
