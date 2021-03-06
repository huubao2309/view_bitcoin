import 'dart:async';

import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:view_bitcoin/model/title_table.dart';
import 'package:view_bitcoin/util/link_source.dart';

import 'model/bitcoin.dart';
import 'model/title_table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  TitleList titleList = TitleList();
  final coinDataList = <BitCoin>[];
  final bitcoinStream = StreamController<List<BitCoin>>();
  final titleListStream = StreamController<TitleList>();

  @override
  void initState() {
    super.initState();

    // runs every 1 second
    Timer.periodic(
      new Duration(seconds: 3),
      (timer) {
        getCoinInfo();
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    bitcoinStream.close();
    titleListStream.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<List<BitCoin>>(
        stream: bitcoinStream.stream,
        initialData: null,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          final data = snapshot.data;

          return ListView.separated(
            // itemCount: data.length + 1,
            itemCount: data.length,
            itemBuilder: (context, index) {
              // if (index == 0) {
              //   // return the header
              //   return _buildTitleListView(titleList);
              // }
              // index -= 1;
              return _buildGoldInfoRow(data[index], index);
            },
            separatorBuilder: (context, index) => Container(
              height: 2,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }

  Widget _buildTitleListView(TitleList title) {
    return Container(
      height: 70,
      color: const Color(0xff0C3150),
      child: StreamBuilder<TitleList>(
          stream: titleListStream.stream,
          initialData: null,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Container(
                width: 0,
                height: 0,
              );
            }

            final title = snapshot.data;
            return Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.brown,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Center(
                      child: Text(
                        title.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        title.symbol,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        title.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        titleList.marketCap,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        titleList.change24H,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget _buildGoldInfoRow(BitCoin bitCoin, int index) {
    return Container(
      height: 70,
      color: Colors.black,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                bitCoin.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 70,
              color: index == 0 ? Colors.black : Colors.brown,
              child: Center(
                child: Text(
                  bitCoin.symbol,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        index == 0 ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 70,
              color: index == 0 ? Colors.black : Colors.brown,
              child: Center(
                child: Text(
                  bitCoin.price,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        index == 0 ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 70,
              color: index == 0 ? Colors.black : Colors.brown,
              child: Center(
                child: Text(
                  bitCoin.marketCap,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        index == 0 ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 70,
              color: index == 0 ? Colors.black : Colors.brown,
              child: Center(
                child: Text(
                  bitCoin.change24H,
                  style: TextStyle(
                    color: index == 0
                        ? Colors.white
                        : bitCoin.change24H.contains('-')
                            ? Colors.red
                            : Colors.green,
                    fontWeight:
                        index == 0 ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getCoinInfo() async {
    final client = Client();
    var response = await client.get(Utils.linkURL);
    final document = parse(response.body);
    final divStr = document.querySelectorAll("div");

    // Clear list
    if (coinDataList.length != 0) {
      coinDataList.clear();
    }

    for (final divParent in divStr) {
      try {
        if (divParent.className == Utils.div1) {
          for (final element in divParent.children) {
            if (element.className == Utils.div2) {
              titleList = TitleList(
                stt: element.children[0].text,
                symbol: element.children[1].text,
                name: element.children[2].text,
                price: element.children[3].text,
                h24vol: element.children[4].text,
                marketCap: element.children[5].text,
                change24H: element.children[6].text,
                change7D: element.children[7].text,
                change1M: element.children[8].text,
                change6M: element.children[9].text,
                change1Y: element.children[10].text,
                liqBid: element.children[11].text,
                liqAsk: element.children[12].text,
                liqRatio: element.children[13].text,
              );
            } else {
              // A Element a
              var valueCoin = BitCoin(
                stt: element.children[0].text,
                symbol: element.children[1].text,
                name: element.children[2].text,
                price: element.children[3].text,
                h24vol: element.children[4].text,
                marketCap: element.children[5].text,
                change24H: element.children[6].text,
                change7D: element.children[7].text,
                change1M: element.children[8].text,
                change6M: element.children[9].text,
                change1Y: element.children[10].text,
                liqBid: element.children[11].text,
                liqAsk: element.children[12].text,
                liqRatio: element.children[13].text,
              );
              coinDataList.add(valueCoin);
            }
          }

          // Add title
          var title = BitCoin(
            stt: 'STT',
            symbol: 'Symbol',
            name: 'Name',
            price: 'Price',
            h24vol: '24H vol',
            marketCap: 'Market Cap',
            change24H: '24H Change',
            change7D: '7D change',
            change1M: '1M change',
            change6M: '6M change',
            change1Y: '1Y change',
            liqBid: 'LiqBid',
            liqAsk: 'LiqAsk',
            liqRatio: 'LiqRatio',
          );
          coinDataList.insert(0, title);

          bitcoinStream.sink.add(coinDataList);
          titleListStream.sink.add(titleList);
        }
      } catch (ex) {
        print(ex);
      }
    }
  }
}
