import 'package:flutter/material.dart';
import 'custom_text.dart';
import '../models/question.dart';


class PageQuiz extends StatefulWidget {
  @override
  _PageQuizState createState() => new _PageQuizState();
}

class _PageQuizState extends State<PageQuiz> {

  Question question;

  List<Question> questions = [
    new Question("yo ?", true, "Je suis en train de faire qui 1 ", "deux.jpg"),
    new Question("yo ?", false, "Je suis en train de faire qui 2 ", "un.jpg"),
    new Question("yo ?", true, "Je suis en train de faire qui 3 ", "logo.jpg"),
    new Question("yo ?", false, "Je suis en train de faire qui 4 ", "deux.jpg"),
    new Question("yo ?", false, "Je suis en train de faire qui 5 ", "un.jpg"),
  ];

  int index = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    question = questions[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double appWidth = MediaQuery
        .of(context)
        .size
        .width * 0.20;
    return new Scaffold(
      appBar: new AppBar(
        title: new CustomText("Page du Quiz"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new CustomText("Question numéro  ${index + 1}"),
            new CustomText("Score: $score / $index"),
            new Card(
              elevation: 20.0,
              child: new Container(
                height: appWidth,
                width: appWidth,
                child: new Image.asset(
                  "assets/${question.imagesName}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new CustomText(
                question.question, color: Colors.grey[900], factor: 1.3),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                btnBool(true),
                btnBool(false),
              ],
            )
          ],
        ),
      ),
    );
  }

  RaisedButton btnBool(b) {
    return new RaisedButton(
      elevation: 10.0,
      onPressed: (() => dialog(b)),
      color: Colors.blue,
      child: new CustomText((b) ? "Vraie" : "Faux", factor: 1.25),
    );
  }

  Future<Null> dialog(bool b) async {
    bool goodAnswer = (b == question.answer);

    if (goodAnswer) {
      score++;
    }

    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          String imgTrue = "assets/true.jpg";
          String imgFalse = "assets/false.jpg";
          return new SimpleDialog(
            title: new CustomText(
              (goodAnswer) ? "Bonne réponse !!! " : "Mauvaise réponse",
              color: (goodAnswer) ? Colors.green : Colors.red,
            ),
            contentPadding: EdgeInsets.all(20.0),
            children: <Widget>[
              new Container(
                height: 500,
                width: 500,
                child: new Image.asset(
                  (goodAnswer) ? imgTrue : imgFalse, fit: BoxFit.cover,
                ),
              ),
              new Container(height: 25,),
              new CustomText(
                question.explication, factor: 1.25, color: Colors.grey[900],),
              new Container(height: 25,),
              new RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                  nexQuestion();
                },
                child: new CustomText("Question suivante"),
              )
            ],

          );
        }
    );

  }

  Future<Null> alertEnd() async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext buildContext) {
        return new AlertDialog(
          title: new CustomText("c'est Fini", factor: 1.25, color: Colors.red,),
          content: new CustomText("Votre SCORE: $score / $index"),
          actions: <Widget>[
            new FlatButton(
                onPressed: () {
                  Navigator.pop(buildContext);
                  Navigator.pop(context);
                },
                child: new CustomText("ok", factor: 1.25,)
            )
          ],
        );
      },

    );
  }

  void nexQuestion() {
    if (index < questions.length - 1) {
      index++;
      setState(() {
        question = questions[index];
      });
    }
    else {
      alertEnd();
    }
  }

}
