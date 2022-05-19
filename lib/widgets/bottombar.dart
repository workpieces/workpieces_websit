import 'package:flutter/material.dart';
import 'package:flutter_workpieces/widgets/constant.dart';
import 'package:flutter_workpieces/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

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
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    COPYRIGHT,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            onPressed: () {
                              launch(GITHUB);
                            },
                            child: Text(
                              "称为赞助商",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            COPYRIGHT,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
    );
  }
}
