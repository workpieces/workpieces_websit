import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workpieces/screens/about/about.dart';
import 'package:flutter_workpieces/screens/about/webview.dart';

import 'package:flutter_workpieces/screens/home/home_screen.dart';

var rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomeScreen();
  },
);

var aboutHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return AboutScreen();
  },
);

var downloadHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return AboutScreen();
  },
);

// 带多个参数
// copy from https://pub.dev/packages/fluro
var webViewHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    String title = params['title']?.first;
    String url = params['url']?.first;
    return WebViewScreen(
      title: title,
      url: url,
    );
  },
);
