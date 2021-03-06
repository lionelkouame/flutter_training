import 'package:flutter/material.dart';
import 'package:flutter_training/app/interactive_control/checkbox_training.dart';
import 'package:flutter_training/app/interactive_control/radio_training.dart';
import 'package:flutter_training/app/interactive_control/switch_training.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'package:flutter_training/app/quiz/widgets/second_home.dart';
import 'package:flutter_training/app/slider_training/slider_training.dart';
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
          title: new Text("Bienvenu !!"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                        return new SliderTraining();
                      }));
                },
                child: CustomText(
                  'Le sliders',
                  color: Colors.white,
                  factor: 2,
                ),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                        return new MyHomeSecondPage();
                      }));
                },
                child: CustomText(
                  'Autres',
                  color: Colors.white,
                  factor: 2,
                ),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                        return new SwitchTraining();
                      }));
                },
                child: CustomText('Switch Training'),
              )
            ],
          ),
        )
    );
  }
}
