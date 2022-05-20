import 'dart:math';

import 'package:flutter/material.dart';

// 默认尺寸
class KDefaultScreenSize {
  static const kHomeNavagationHeight = 80.0;
  static const kDefaultLeftSpace = 20.0;
  static const kDefaultTopSpace = 15.0;
}

// 默认描述
class KDefaultDescribe {
  static const kWorkpieceTitleName = "Workpieces";
  static const kWorkpieceCopyright =
      "Copyright © 2022 Workpieces LLC. All Rights Reserved.";
  static const kWorkpieceEmail = "workpieces_app@yeah.net";
  static const kWorkpieceBusinessDay =
      "( 周一至周五 9:00-12:00, 13:00-18:00 )    workpieces_app@yeah.net";
}

// 获取随机颜色
Color getRandomColor({int r = 255, int g = 255, int b = 255, a = 255}) {
  if (r == 0 || g == 0 || b == 0) return Colors.black;
  if (a == 0) return Colors.white;
  return Color.fromARGB(
    a,
    r != 255 ? r : Random.secure().nextInt(r),
    g != 255 ? g : Random.secure().nextInt(g),
    b != 255 ? b : Random.secure().nextInt(b),
  );
}
