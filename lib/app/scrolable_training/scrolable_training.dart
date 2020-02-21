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
        body: Center(),
      ),
    );
  }
}
