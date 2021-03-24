import 'package:fitflex/componants/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hinttxt;
  final ValueChanged<String> onchanged;
  const RoundedPasswordField({
    Key key,
    this.onchanged,
    this.hinttxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onchanged,
        obscureText: true,
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
