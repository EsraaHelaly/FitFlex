import 'package:fitflex/componants/already_have_accout_check.dart';
import 'package:fitflex/componants/rounded_input_field.dart';
import 'package:fitflex/componants/rounded_password_field.dart';
import 'package:fitflex/componants/roundedbutton.dart';
import 'package:fitflex/constants.dart';
import 'package:fitflex/register_screens/signup.dart';
import 'package:flutter/material.dart';

import '../homescreen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/login.jpeg"), fit: BoxFit.fill),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                            color: ktextcolor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'please login to continue',
                        style: TextStyle(
                            color: ktextcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: RoundedInputField(
                    hinttext: 'enter your email ',
                    onchanged: (value) {},
                    txttype: TextInputType.emailAddress,
                    icon: Icons.email,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: RoundedPasswordField(
                    hinttxt: 'enter your password',
                    onchanged: (value) {},
                  ),
                ),
                SizedBox(height: 80),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: RoundedButton(
                    txt: 'Log In ',
                    press: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
                    },
                  ),
                ),
                SizedBox(height: 30),
                AlreadyHaveAccountCheck(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
