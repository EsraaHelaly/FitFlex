import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.txt,
    @required this.press,
  }) : super(key: key);

  final String txt;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 54,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
          color: Color(0xff5767A3),
          onPressed: press,
          child: Text(
            txt,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
