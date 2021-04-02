import 'package:fitflex/componants/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hinttxt;
  final ValueChanged<String> onchanged;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key key,
    this.onchanged,
    this.hinttxt,
    this.controller

  }) : super(key: key);

  String _errorMessage(){
    switch(hinttxt){

      case "enter your email" : return "enter your email";
      case "Enter Your Password" : return "Enter Your Password";

    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return _errorMessage();
          }
        },
        obscureText: hinttxt=='Enter Your Password' ?true :false,
        controller: controller,

        onChanged: onchanged,

        decoration: InputDecoration(
          hintText: hinttxt,
          icon: Icon(Icons.lock),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
