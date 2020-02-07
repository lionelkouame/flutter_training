import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class CheckboxTraining extends StatefulWidget {
  @override
  _CheckboxTrainingState createState() => _CheckboxTrainingState();
}

class _CheckboxTrainingState extends State<CheckboxTraining> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: CustomText("Page  de Checkox raining"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[CustomText('My first checkbox')],
      )),
    );
  }
}
