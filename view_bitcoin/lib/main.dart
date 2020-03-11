import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';

import 'model/bitcoin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('View BitCoin'),
        ),
        body: ViewBitcoin(),
      ),
    );
  }
}

class ViewBitcoin extends StatefulWidget {
  @override
  _ViewBitcoinState createState() => _ViewBitcoinState();
}

class _ViewBitcoinState extends State<ViewBitcoin> {
  final coinData = <BitCoin>[];

  @override
  void initState() {
    super.initState();
    getCoinInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void getCoinInfo() async {
    final client = Client();
    const linkURL = 'https://kenniex.com/';
    var response = await client.get(linkURL);
    final document = parse(response.body);
    final divStr = document.querySelectorAll("div");

    for (final divParent in divStr) {
      try {
        if (divParent.className == 'main mt-10') {
          for (final divChildren in divParent.children) {
            if (divChildren.className == 'tab-content') {
              for (final divChildren1 in divChildren.children) {
                if (divChildren1.className == 'tab-pane fade in active') {
                  for (final divChildren2 in divChildren1.children) {
                    if (divChildren2.className ==
                        'table-responsive coin-list-table') {
                      for (final table in divChildren2.children) {
                        if (table.className ==
                            'table table-condensed table-hover') {
                          var abc = table;
                          var abcd = table.children;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      } catch (ex) {
        print(ex);
      }
    }
  }

  // void getTableContainCoin(List<Element> list) {
  //   for (final i in list) {
  //     try {
  //       if (i.class == "table table-condensed table-hover") {
  //         final table = i.querySelectorAll("table");
  //         final trs = table.querySelectorAll('tr');
  //       }
  //     } catch (ex) {
  //       print(ex);
  //     }
  //   }
  // }
}
