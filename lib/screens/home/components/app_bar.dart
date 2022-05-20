import 'package:flutter/material.dart';
import 'package:flutter_workpieces/constant.dart';
import 'package:flutter_workpieces/screens/home/components/menu_item.dart';
import 'package:flutter_workpieces/screens/home/model/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KDefaultScreenSize.kHomeNavagationHeight,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: KDefaultScreenSize.kDefaultLeftSpace),
            child: Text(
              KDefaultDescribe.kWorkpieceTitleName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
          ),
          Row(
            children: appbars
                .map((item, {index}) => DefaultMenuItem(
                      title: item.title,
                      press: () {
                        switch (item.type) {
                          case 0:
                            launch(item.link);
                            break;
                          case 1:
                            launch(item.link);
                            break;
                          case 2:
                            launch(item.link);
                            break;
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
