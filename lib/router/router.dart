import 'package:fluro/fluro.dart';
import 'package:flutter_workpieces/router/route_handler.dart';

class Application {
  static FluroRouter router;
}

// copy from https://stackoverflow.com/questions/65130705/navigation-with-fluro-flutter-web
class Routes {
  final router = FluroRouter(); // 路由管理
  static String root = '/'; // 根目录
  static String adbout = "/about"; // 关于
  static String download = "/download"; //资源下载

  static void configureRoutes(FluroRouter router) {
    router.define(root, handler: rootHandler);
    router.define(adbout, handler: aboutHandler);
    router.define(download, handler: downloadHandler);
  }
}
