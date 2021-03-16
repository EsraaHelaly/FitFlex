import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:fitflex/homescreen.dart';

List<CameraDescription> cameras;

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

enum AuthMode { signup, login }

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  AuthMode _authmode = AuthMode.login;
  Map<String, String> _formdata = {'email': '', 'pass': ""};
  final _passcontroller = TextEditingController();

  void _switchAuthMode() {
    if (_authmode == AuthMode.login) {
      setState(() {
        _authmode = AuthMode.signup;
      });
    } else {
      setState(() {
        _authmode = AuthMode.login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login screen',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.black,
        accentColor: new Color(0xff9C27B0),
      ),
      home: Scaffold(
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //      image: AssetImage("images/img1.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Center(
            child: Card(
              margin: EdgeInsets.all(12),
              elevation: 3,
              color: Colors.white.withOpacity(0.3),
              child: AnimatedContainer(
                padding: EdgeInsets.all(10),
                duration: Duration(milliseconds: 500),
                height: _authmode == AuthMode.login ? 290 : 475,
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_authmode == AuthMode.signup)
                          TextFormField(
                            // enabled: _authmode == AuthMode.signup,
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              hintText: 'enter your First Name here',
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        if (_authmode == AuthMode.signup)
                          TextFormField(
                            // enabled: _authmode == AuthMode.signup,
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              hintText: 'enter your Last Name here',
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'e-mail',
                            hintText: 'enter your email here',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val.isEmpty || !val.contains('@')) {
                              return 'should have @';
                            }
                            return null;
                          },
                          onSaved: (val) {
                            _formdata['email'] = val;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          obscureText: true,
                          controller: _passcontroller,
                          decoration: InputDecoration(
                            labelText: 'password',
                            hintText: 'enter your password here',
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          validator: (val) {
                            if (val.isEmpty || val.length <= 5) {
                              return 'invalid pass';
                            }
                            return null;
                          },
                          onSaved: (val) {
                            _formdata['pass'] = val;
                          },
                        ),
                        if (_authmode == AuthMode.signup)
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'confirm pass',
                              hintText: 're-enter your password ',
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            validator: _authmode == AuthMode.signup
                                ? (val) {
                                    if (val != _passcontroller.text) {
                                      return 'dosent match !';
                                    }
                                    return null;
                                  }
                                : null,
                            onSaved: (val) {
                              _formdata['pass'] = val;
                            },
                          ),
                        RaisedButton(
                            color: new Color(0xffE1BEE7),
                            child: Text(_authmode == AuthMode.login
                                ? "Login"
                                : 'SignUp'),
                            onPressed: () {
                              if (!_formkey.currentState.validate()) {
                                return;
                              } else
                                _formkey.currentState.save();
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                            }),
                        FlatButton(
                          onPressed: _switchAuthMode,
                          child: Text(
                            '${_authmode == AuthMode.login ? "signUp" : "Login"} Instead?',
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
