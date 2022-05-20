import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final MaterialColor color;
  final Function press;
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
