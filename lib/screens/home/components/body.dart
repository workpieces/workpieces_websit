import 'package:flutter/material.dart';
import 'package:flutter_workpieces/components/responsive.dart';
import 'package:flutter_workpieces/screens/home/model/software.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final SoftwareModel cell;
  const Body({Key key, this.cell}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isMediumScreen(context)
        ? SmallItemCell(item: cell)
        : NormalItemCell(item: cell);
  }
}

class NormalItemCell extends StatelessWidget {
  final SoftwareModel item;
  const NormalItemCell({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: MaterialButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          onPressed: () {
                            launch(pkg.link);
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                            child: Text(
                              pkg.name,
                              style:
                                  TextStyle(color: Colors.green, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Image.asset(
                item.logo,
                fit: BoxFit.fitHeight,
                height: 350,
              ),
            ))
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
      verticalDirection: VerticalDirection.down,
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
          item.status == 1 ? "（已发版）" : "（研发中）",
          style: TextStyle(
              fontSize: 14.0,
              color:
                  item.status == 1 ? Colors.greenAccent : Colors.orangeAccent),
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
