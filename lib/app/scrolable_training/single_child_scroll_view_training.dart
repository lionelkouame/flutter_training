import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'package:flutter_training/app/quiz/widgets/home.dart';
import 'package:flutter_training/app/scrolable_training/single_child_scroll_view_training.dart';

class SingleChildScrollViewTraining extends StatefulWidget {
  @override
  _SingleChildScrollViewTrainingState createState() =>
      _SingleChildScrollViewTrainingState();
}

class _SingleChildScrollViewTrainingState
    extends State<SingleChildScrollViewTraining> {
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
