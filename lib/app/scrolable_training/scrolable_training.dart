import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'package:flutter_training/app/quiz/widgets/home.dart';
import 'package:flutter_training/app/scrolable_training/custom_tile_training.dart';
import 'package:flutter_training/app/scrolable_training/list_view_training.dart';
import 'package:flutter_training/app/scrolable_training/single_child_scroll_view_training.dart';

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
          title: CustomText("The singleChildScrollView"),
        ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return new SingleChildScrollViewTraining();
                              }));
                    },
                    child: CustomText("the SingleChildScrollView",
                        factor: 2, color: Colors.white),
                  ),
                  new RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return new ListViewTraining();
                              }));
                    },
                    child: CustomText("the ListView",
                        factor: 2, color: Colors.white),
                  ),
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return new CustomTileTraining();
                              }));
                    },
                    child: CustomText("the Cutom Tile",
                        factor: 2, color: Colors.white),
                  ),
                ],
              ))
      ),
    );
  }
}
