import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workpieces/components/default_button.dart';
import 'package:flutter_workpieces/constant.dart';
import 'package:flutter_workpieces/components/responsive.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: ResponsiveWidget.isSmallScreen(context)
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
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "( 周一至周五 9:00-12:00, 13:00-18:00 ) ",
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                  children: [
                    TextSpan(
                      text: '  workpieces_app@yeah.net',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchMailto();
                        },
                    ),
                  ],
                ),
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

  // copy from https://pub.dev/packages/mailto
  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['workpieces_app@yeah.net'],
      cc: ['workpieces_app@yeah.net', 'tao_shuminX@foxmail.com'],
      subject: 'Workpieces 商务合作',
    );
    await launch('$mailtoLink');
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
