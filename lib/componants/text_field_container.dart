import 'package:fitflex/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: kprimarylight,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
