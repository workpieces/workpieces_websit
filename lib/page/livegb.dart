import 'package:flutter/material.dart';
import 'package:flutter_workpieces/widgets/constant.dart';

class LiveGBPage extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Expanded(
        flex: 2,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    LIVEGBNAME,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "（研发中）",
                    style:
                        TextStyle(fontSize: 14.0, color: Colors.orangeAccent),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  LIVEGBDES,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "ARM 安装",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "AMD 安装",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Docker 安装",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset(
              "assets/images/etcd_image.png",
              fit: BoxFit.fitHeight,
              height: 300,
            ),
          ))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(),
        );
      },
    );
  }
}

class SmallLiveGBPage extends StatelessWidget {
  const SmallLiveGBPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                LIVEGBNAME,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "（研发中）",
                style: TextStyle(fontSize: 14.0, color: Colors.orangeAccent),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              LIVEGBDES,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Docker 安装",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
