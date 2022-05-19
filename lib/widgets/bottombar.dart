import 'package:flutter/material.dart';
import 'package:flutter_workpieces/widgets/constant.dart';
import 'package:flutter_workpieces/widgets/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Center(
                  child: Text(
                    COPYRIGHT,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "商务合作:",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        BUSSWEEK,
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    COPYRIGHT,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
    );
  }
}
