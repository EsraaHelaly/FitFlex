import 'package:fitflex/componants/already_have_accout_check.dart';
import 'package:fitflex/componants/rounded_input_field.dart';
import 'package:fitflex/componants/rounded_password_field.dart';
import 'package:fitflex/componants/roundedbutton.dart';
import 'package:fitflex/constants.dart';

import 'package:fitflex/register_screens/login.dart';
import 'package:fitflex/service/model/model_data.dart';
import 'package:flutter/material.dart';

import 'info_signup/PageIndecator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  TextEditingController UserNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void dispose() {
    UserNameController.dispose();
    passwordController.dispose();
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _drawRegistrastionFrom(),
    );
  }

  Widget _drawRegistrastionFrom() {
    return Form(
      key: _globalKey,
      child: Container(
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
                        hint: 'enter your user name',
                        onchanged: (value) {},
                        controller: UserNameController,
                        txttype: TextInputType.text,
                        icon: Icons.person,
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedInputField(
                        hint: 'enter your email',
                        controller: emailController,
                        onchanged: (value) {},
                        txttype: TextInputType.emailAddress,
                        icon: Icons.email,
                      ),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedInputField(
                        controller: passwordController,
                        hint: 'Enter Your Password',
                        icon: Icons.lock,
                        onchanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 25),

                    SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RoundedButton(
                          txt: 'Sign Up',
                          press: () {

                            Data_user data_user = Data_user();

                            if (_globalKey.currentState.validate()) {
                              data_user.username = UserNameController.text;
                              data_user.email = emailController.text;
                              data_user.password = passwordController.text;

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return PageIndecator(0,data_user: data_user);
                                }),
                              );
                            }
                          }),
                    ),
                    SizedBox(height: 30),
                    AlreadyHaveAccountCheck(
                        login: false,
                        press: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
            )
          ],
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
