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
  var display = false;
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar:  new AppBar(
        title: new Text("Lionel KOuame"),
        leading: new Icon(Icons.account_balance_wallet),
        actions: <Widget>[
          new Icon(Icons.account_balance_wallet),
          new Icon(Icons.label),
          new Icon(Icons.account_circle),
        ],
        elevation: 10,
        centerTitle:  true,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text("Salut My name is Gopher",
              style: new TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontStyle: FontStyle.italic
              )
            ),
            new Card(
              elevation: 20,
              child: new Container(
                height: 200,
                width: 300,
                child: new Image.asset("images/go.png"),
              ),
            ),
            new IconButton(
                icon: new Icon(Icons.account_circle),
                onPressed: (){
                  setState(() {
                    display = !display;
                  });
                }),
            new Container(
              color: Colors.grey,
              height: 70,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Container(
                    color: (display) ? Colors.yellow: Colors.blue,
                    height: 50,
                    width: 50,
                  ),
                  new Container(
                    color: Colors.white,
                    height: 50,
                    width: 50,
                  ),
                  new Container(
                    color: Colors.white12,
                    height: 50,
                    width: 50,
                  ),
                ],
              )
            )
          ],

        ),

      ),
    );
  }
}