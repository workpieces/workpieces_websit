import 'package:flutter/material.dart';
import 'package:flutter_workpieces/constant.dart';
import 'package:flutter_workpieces/screens/home/components/app_bar.dart';
import 'package:flutter_workpieces/components/responsive.dart';
import 'package:flutter_workpieces/screens/home/components/body.dart';
import 'package:flutter_workpieces/screens/home/components/bottom_bar.dart';
import 'package:flutter_workpieces/screens/home/model/software.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              toolbarHeight: KDefaultScreenSize.kHomeNavagationHeight,
              backgroundColor: Colors.black,
              elevation: 0.0,
              centerTitle: true,
              title: Text(
                KDefaultDescribe.kWorkpieceTitleName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5.0),
              ),
            )
          : PreferredSize(
              preferredSize: Size(size.width, 1000),
              child: CustomAppBar(),
            ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 20, 105, 195),
                        Color.fromARGB(255, 23, 11, 54)
                      ]),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(
                      KDefaultScreenSize.kDefaultLeftSpace,
                      KDefaultScreenSize.kDefaultLeftSpace * 2,
                      KDefaultScreenSize.kDefaultLeftSpace,
                      0),
                  itemCount: softwares.length,
                  itemBuilder: (context, index) {
                    return Body(cell: softwares[index]);
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}
