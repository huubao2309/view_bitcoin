import 'package:flutter/material.dart';

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

class ViewBitcoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Flutter Demo Home Page'),
    );
  }
}
