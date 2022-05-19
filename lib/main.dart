import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_workpieces/page/etcdwp.dart';
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60.0),
                child: Container(
                  height: ScrollViewHeight,
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return new Image.network(
                        "http://via.placeholder.com/350x150",
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: 5,
                    viewportFraction: 0.8,
                    scale: 0.8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? SmallEtcdwpPage()
                    : EtcdWpPage(),
              ),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
