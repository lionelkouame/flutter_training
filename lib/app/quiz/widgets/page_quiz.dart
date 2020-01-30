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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new CustomText("Question numéro  ${index + 1}"),
            new CustomText("Score: $score / $index"),
            new Card(
              elevation: 10.0,
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

  }

}
