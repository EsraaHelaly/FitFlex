import 'package:fitflex/componants/already_have_accout_check.dart';
import 'package:fitflex/componants/rounded_input_field.dart';
import 'package:fitflex/componants/rounded_password_field.dart';
import 'package:fitflex/componants/roundedbutton.dart';
import 'package:fitflex/constants.dart';
import 'package:fitflex/register_screens/signup.dart';
import 'package:fitflex/service/API/Network_class.dart';
import 'package:flutter/material.dart';

import '../screens/homescreen.dart';
import '../screens/homescreen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

// ignore: non_constant_identifier_names
API_Service api_service = API_Service();
final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  TextEditingController UserNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isloading = false;
  bool loginError = false;
  String user;
  String password;
  void dispose() {
    UserNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: isloading ? _drawLoading() : _drawLoginForm());
  }

  Widget _drawLoginForm() {
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
    return Form(
      key: _globalKey,
      child: SingleChildScrollView(
        child: Container(
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
                      hint: 'enter your email',
                      onchanged: (value) {},
                      txttype: TextInputType.emailAddress,
                      icon: Icons.email,
                      controller: UserNameController,
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: RoundedInputField(
                      hint: 'Enter Your Password',
                      onchanged: (value) {},
                      txttype: TextInputType.emailAddress,
                      icon: Icons.lock,
                      controller: passwordController,
                    ),
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: RoundedButton(
                      txt: 'Log In ',
                      press: () async {
                        if (_globalKey.currentState.validate()) {
                          setState(() {
                            isloading = true;
                          });
                          user = UserNameController.text;
                          password = passwordController.text;

                          var response =
                              await api_service.login(user, password);

                          if (response) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                          } else {
                            loginError = true;
                          }
                          setState(() {
                            isloading = false;
                          });
                        } else {
                          setState(() {
                            isloading = false;
                          });
                        }
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
      ),
    );
  }

  Widget _drawLoading() {
    return Container(
        child: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
