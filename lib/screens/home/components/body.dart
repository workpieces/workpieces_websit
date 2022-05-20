import 'package:flutter/material.dart';
import 'package:flutter_workpieces/components/responsive.dart';
import 'package:flutter_workpieces/screens/home/model/software.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: ListView.builder(
        itemCount: softwares.length,
        itemBuilder: (context, index) {
          return ResponsiveWidget.isMediumScreen(context)
              ? SmallItemCell(item: softwares[index])
              : NormalItemCell(item: softwares[index]);
        },
      ),
    );
  }
}

class NormalItemCell extends StatelessWidget {
  final SoftwareModel item;
  const NormalItemCell({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            ItemCellTitle(item: item),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                item.desc,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: item.packages
                  .map(
                    (pkg, {index}) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        onPressed: () {
                          launch(pkg.link);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pkg.name,
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}

class ItemCellTitle extends StatelessWidget {
  const ItemCellTitle({
    Key key,
    @required this.item,
  }) : super(key: key);

  final SoftwareModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "（已发版）",
          style: TextStyle(fontSize: 14.0, color: Colors.greenAccent),
        ),
      ],
    );
  }
}

class SmallItemCell extends StatelessWidget {
  final SoftwareModel item;
  const SmallItemCell({Key key, this.item}) : super(key: key);

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
                item.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                item.status.toString(),
                style: TextStyle(fontSize: 14.0, color: Colors.greenAccent),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              item.desc,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            onPressed: () {
              launch(item.packages[0].link);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                item.packages[0].name,
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
