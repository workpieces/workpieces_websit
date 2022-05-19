import 'package:flutter/material.dart';
import 'package:flutter_workpieces/page/etcdwp.dart';
import 'package:flutter_workpieces/page/livegb.dart';
import 'package:flutter_workpieces/widgets/bottombar.dart';
import 'package:flutter_workpieces/widgets/constant.dart';
import 'package:flutter_workpieces/widgets/navbar.dart';
import 'package:flutter_workpieces/widgets/responsive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workpieces LLC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              toolbarHeight: NavagationHeight,
              backgroundColor: Colors.black,
              elevation: 0.0,
              centerTitle: true,
              title: Text(
                "Workpieces",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 5.0),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: HomeWebNavbar(),
            ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 40.0),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? SmallEtcdwpPage()
                    : EtcdWpPage(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 40.0),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? SmallLiveGBPage()
                    : LiveGBPage(),
              ),
              SizedBox(height: screenSize.height / 10),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
