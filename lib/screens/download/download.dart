import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_workpieces/constant.dart';

// copy from https://www.cnblogs.com/madlife/p/12449438.html
class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: KDefaultScreenSize.kHomeNavagationHeight,
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          "资源下载",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
              letterSpacing: 5.0),
        ),
      ),
      body: DownloadBody(size: size),
    );
  }
}

class DownloadBody extends StatelessWidget {
  const DownloadBody({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/markdown/markdown.md'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Markdown(data: snapshot.data);
          } else {
            return Center(
              child: Text("加载中..."),
            );
          }
        },
      ),
    );
  }
}
