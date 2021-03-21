import 'package:fitflex/componants/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onchanged;
  final TextInputType txttype;
  const RoundedInputField({
    Key key,
    this.hinttext,
    this.icon,
    this.onchanged,
    this.txttype,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: hinttext,
          icon: Icon(icon),
          border: InputBorder.none,
        ),
        keyboardType: txttype,
      ),
    );
  }
}
