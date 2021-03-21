import 'package:fitflex/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an account ? " : "Already have an Account ?",
          style: TextStyle(
            color: kprimarylight,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign UP " : "Sign In",
            style: TextStyle(
              color: kprimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
