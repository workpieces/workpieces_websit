import 'package:flutter/material.dart';
import 'package:flutter_workpieces/widgets/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      color: Colors.black,
      child: ResponsiveWidget.isSmallScreen(context) ? Column() : Column(),
    );
  }
}
