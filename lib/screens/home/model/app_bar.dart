import 'package:flutter_workpieces/router/router.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AppBarModel extends Object {
  String title;
  String link;
  int type; // 0 push router 1: push web url
  AppBarModel(this.title, this.link, this.type);
}

final appbars = [
  AppBarModel("资源下载", Routes.download, 0),
  AppBarModel("关于我们", Routes.adbout, 0),
  AppBarModel("Github", "https://github.com/workpieces", 1),
];
