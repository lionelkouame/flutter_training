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
    new Question("yo ?", true, "Je suis en train de faire qui 1 "),
    new Question("yo ?", false, "Je suis en train de faire qui 2 "),
    new Question("yo ?", true, "Je suis en train de faire qui 3 "),
    new Question("yo ?", false, "Je suis en train de faire qui 4 "),
    new Question("yo ?", false, "Je suis en train de faire qui 5 "),
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
    return new Scaffold(
      appBar: new AppBar(
        title: new CustomText("Page du Quiz"),
      ),
      body: new Center(),
    );
  }
}
