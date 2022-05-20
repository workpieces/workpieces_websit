import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_workpieces/constant.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 20, 105, 195),
              Color.fromARGB(255, 23, 11, 54)
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: KDefaultScreenSize.kDefaultTopSpace),
            child: Center(
              child: Text(
                "关于我们",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 5,
                  fontWeight:FontWeight.w400,),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "我们做了很多创业项目，但没有一次成功。\n 我们做了许多功能，但都半途而废。\n 我们希望解决生活中、工作中的痛点。\n 我们希望得到大家的认同和鼓励。",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.w400,
                  fontSize: 16.0,
                  letterSpacing: 1
              ),
            ),
          )
        ],
      ),
    );
  }
}
