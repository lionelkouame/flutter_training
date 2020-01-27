import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var totalWidht = MediaQuery
        .of(context)
        .size
        .width;
    var totalheight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Card(
                elevation: 10.0,
                child: new Container(
                  height: 400,
                  width: 400,
                  child: new Image.asset('assets/deux.jpg',
                    fit: BoxFit.cover,),
                ),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: null,
                child: CustomText(
                    "Commencer le Quiz", factor: 2, color: Colors.white),)

            ],
          ),
        )
    );
  }
}
