import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class RadioTraining extends StatefulWidget {
  @override
  _RadioTrainingState createState() => _RadioTrainingState();
}

class _RadioTrainingState extends State<RadioTraining> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: CustomText("Boutton Radio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[],
        ),
      ),
    );
  }
}
