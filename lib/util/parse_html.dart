import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:view_bitcoin/model/title_table.dart';

import '../model/bitcoin.dart';
import 'link_source.dart';

class ParseHtmlLink {
  static TitleList titleList = TitleList();
  static List<BitCoin> coinDataList = List<BitCoin>();

  static void getCoinInfo() async {
    final client = Client();
    var response = await client.get(Utils.linkURL);
    final document = parse(response.body);
    final divStr = document.querySelectorAll("div");

    for (final divParent in divStr) {
      try {
        if (divParent.className == Utils.div1) {
          for (final element in divParent.children) {
            if (element.className == Utils.div2) {
              for (final element in element.children) {
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
              }
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

          var lenght = coinDataList.length;
          print('Bitcoin: $lenght');
        }
      } catch (ex) {
        print(ex);
      }
    }
  }
}
