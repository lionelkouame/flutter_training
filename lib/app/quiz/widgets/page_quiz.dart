import 'package:flutter/material.dart';
import 'custom_text.dart';

class PageQuiz extends StatefulWidget {
  @override
  _PageQuizState createState() => new _PageQuizState();
}

class _PageQuizState extends State<PageQuiz> {
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
