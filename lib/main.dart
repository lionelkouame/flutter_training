import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mon application",
      theme: new ThemeData(
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState () {
    return new _Home();

  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      appBar:  new AppBar(
        title: new Text('Jhon Doe '),
        leading: new Icon(Icons.account_balance_wallet),
        actions: <Widget>[
          new Icon(Icons.account_balance_wallet),
          new Icon(Icons.label),
          new Icon(Icons.account_circle),
        ]
      ),
    );
  }
}