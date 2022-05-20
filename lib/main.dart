import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workpieces/constant.dart';
import 'package:flutter_workpieces/router/router.dart';
import 'package:flutter_workpieces/screens/home/home_screen.dart';

void main() => runApp(AppComponent());

class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return _AppComponentState();
  }
}

class _AppComponentState extends State<AppComponent> {
  _AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: KDefaultDescribe.kWorkpieceTitleName,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.root,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: Application.router.generator,
    );
  }
}
