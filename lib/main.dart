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
        primarySwatch: Colors.grey
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
      backgroundColor: Colors.white,
      appBar:  new AppBar(
        title: new Text('Jhon Doe '),
        leading: new Icon(Icons.account_balance_wallet),
        actions: <Widget>[
          new Icon(Icons.account_balance_wallet),
          new Icon(Icons.label),
          new Icon(Icons.account_circle),
        ],
        elevation: 10,
        centerTitle:  true,
      ),
      body: new Container(
        color: Colors.blueGrey,
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: new Center(
          child: new Card(
            elevation: 15.0,
            child: new Container(
              width: 300,
              child: new Image.asset("images/go.png"),
            ),
          ),
        ),
      ),
    );
  }
}