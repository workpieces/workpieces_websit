import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AppBarModel extends Object {
  String title;
  String link;
  int type; // 0 push router 1: push web url
  AppBarModel(this.title, this.link, this.type);
}

final appbars = [
  AppBarModel("文档手册", "https://github.com/workpieces", 0),
  AppBarModel("资源下载", "https://github.com/workpieces", 0),
  AppBarModel("关于我们", "https://github.com/workpieces", 0),
  AppBarModel("Github", "https://github.com/workpieces", 1),
];

final bottomBars = [
  AppBarModel("官方 Github", "https://github.com/workpieces", 0),
  AppBarModel("Email", "https://github.com/workpieces", 0),
];
