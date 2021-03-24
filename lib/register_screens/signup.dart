import 'package:fitflex/componants/already_have_accout_check.dart';
import 'package:fitflex/componants/rounded_input_field.dart';
import 'package:fitflex/componants/rounded_password_field.dart';
import 'package:fitflex/componants/roundedbutton.dart';
import 'package:fitflex/constants.dart';
import 'package:fitflex/register_screens/info_signup/PageIndecator.dart';
import 'package:fitflex/register_screens/login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image(
                image: AssetImage('images/login.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            Center(
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
                            'Create Account',
                            style: TextStyle(
                                color: ktextcolor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'please fill the input bellow here',
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
                        hinttext: 'enter your user name ',
                        onchanged: (value) {},
                        txttype: TextInputType.text,
                        icon: Icons.person,
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedInputField(
                        hinttext: 'enter your email ',
                        onchanged: (value) {},
                        txttype: TextInputType.emailAddress,
                        icon: Icons.email,
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedPasswordField(
                        hinttxt: 'enter your password',
                        onchanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedPasswordField(
                        hinttxt: 'confirm your password ',
                        onchanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 80),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedButton(
                        txt: 'Sign Up',
                        press: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return PageIndecator(0);
                            }),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    AlreadyHaveAccountCheck(
                      login: false,
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
