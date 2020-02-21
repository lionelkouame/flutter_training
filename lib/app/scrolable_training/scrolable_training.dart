import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class ScrolableTraining extends StatefulWidget {
  @override
  _ScrolableTrainingState createState() => _ScrolableTrainingState();
}

class _ScrolableTrainingState extends State<ScrolableTraining> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: new Scaffold(
        appBar: AppBar(
          title: CustomText("Les scrolables"),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(height: 100, color: Colors.red),
            Container(height: 100, color: Colors.green),
            Container(height: 100, color: Colors.grey),
            Container(height: 100, color: Colors.black),
            Container(height: 100, color: Colors.red),
            Container(height: 100, color: Colors.green),
            Container(height: 100, color: Colors.grey),
            Container(height: 100, color: Colors.black),
            Container(height: 100, color: Colors.red),
            Container(height: 100, color: Colors.green),
            Container(height: 100, color: Colors.grey),
            Container(height: 100, color: Colors.black),
          ],
        )),
      ),
    );
  }
}
