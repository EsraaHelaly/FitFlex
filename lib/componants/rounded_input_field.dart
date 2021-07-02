import 'package:fitflex/componants/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;

  final ValueChanged<String> onchanged;
  final TextInputType txttype;
  const RoundedInputField({
    Key key,
    this.hint,
    this.icon,
    this.onchanged,
    this.txttype,
    this.controller,
  }) : super(key: key);

  String _errorMessage(){
    switch(hint){

      case "enter your email" : return "enter your email";
      case "enter your user name" : return "enter your user name";
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
        obscureText: hint=='Enter Your Password' ?true :false,
        onChanged: onchanged,
        controller: controller,
        decoration: InputDecoration(

          hintText: hint,
          icon: Icon(icon),
          border: InputBorder.none,
        ),
        keyboardType: txttype,
      ),
    );
  }
}
