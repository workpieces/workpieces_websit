import 'package:flutter/material.dart';

class DefaultMenuItem extends StatelessWidget {
  final String title;
  final Function press;
  const DefaultMenuItem({Key key, this.title, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: press,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
