import 'package:flutter/material.dart';
import 'package:flutter_workpieces/constant.dart';
import 'package:flutter_workpieces/screens/home/components/app_bar.dart';
import 'package:flutter_workpieces/components/responsive.dart';
import 'package:flutter_workpieces/screens/home/components/body.dart';
import 'package:flutter_workpieces/screens/home/components/bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isMediumScreen(context)
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
      body: Container(
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
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Body(),
              CustomBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
