import 'package:flutter/material.dart';
import 'package:flutter_workpieces/components/default_button.dart';
import 'package:flutter_workpieces/constant.dart';
import 'package:flutter_workpieces/components/responsive.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: ResponsiveWidget.isMediumScreen(context)
          ? SmallCustomBottomBar()
          : NormalCustomBottomBar(),
    );
  }
}

class NormalCustomBottomBar extends StatelessWidget {
  const NormalCustomBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: KDefaultScreenSize.kDefaultTopSpace,
          horizontal: KDefaultScreenSize.kDefaultLeftSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                height: 15,
              ),
              Text(
                KDefaultDescribe.kWorkpieceBusinessDay,
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ],
          ),
          Text(
            "欢迎访问 Workpieces LLC 官方网站\n",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DefaultButton(
                text: "成为赞助商",
                color: Colors.red,
                press: () {
                  print("赞助");
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                KDefaultDescribe.kWorkpieceCopyright,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SmallCustomBottomBar extends StatelessWidget {
  const SmallCustomBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            KDefaultDescribe.kWorkpieceCopyright,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
