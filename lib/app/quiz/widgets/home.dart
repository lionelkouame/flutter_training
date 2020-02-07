import 'package:flutter/material.dart';
import 'package:flutter_training/app/interactive_control/checkbox_training.dart';
import 'package:flutter_training/app/interactive_control/radio_training.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'page_quiz.dart';

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
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new PageQuiz();
                  }));
                },
                child: CustomText("Commencer le Quiz",
                    factor: 2, color: Colors.white),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new RadioTraining();
                  }));
                },
                child:
                    CustomText("Radio Boutton", factor: 2, color: Colors.white),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new CheckboxTraining();
                  }));
                },
                child: CustomText(
                  'Les contrôles interactifs',
                  color: Colors.white,
                  factor: 2,
                ),
              )
            ],
          ),
        )
    );
  }
}
