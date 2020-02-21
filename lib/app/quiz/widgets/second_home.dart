import 'package:flutter/material.dart';
import 'package:flutter_training/app/calorie_calculator/calorie_calculator.dart';
import 'package:flutter_training/app/scrolable_training/scrolable_training.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'package:flutter_training/app/quiz/widgets/home.dart';
import 'package:flutter_training/app/interactive_control/datepicker_training.dart';

class MyHomeSecondPage extends StatefulWidget {
  MyHomeSecondPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomeSecondPageState createState() => _MyHomeSecondPageState();
}

class _MyHomeSecondPageState extends State<MyHomeSecondPage> {
  @override
  Widget build(BuildContext context) {
    var totalWidht = MediaQuery.of(context).size.width;
    var totalheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: new AppBar(
          title: new CustomText(
            "Autres  Widgets ",
            color: Colors.white,
            factor: 2.0,
          ),
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
                    return new MyHomePage();
                  }));
                },
                child: CustomText("Retour Accueil",
                    factor: 2, color: Colors.white),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new DatePickerTraining();
                  }));
                },
                child: CustomText("Date et date picker",
                    factor: 2, color: Colors.white),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new CalorieCalculator();
                  }));
                },
                child: CustomText("Challenge Calorie calculator",
                    factor: 2, color: Colors.white),
              ),
              new RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                    return new ScrolableTraining();
                  }));
                },
                child: CustomText("Les scrolables",
                    factor: 2, color: Colors.white),
              )
            ],
          ),
        ));
  }
}
