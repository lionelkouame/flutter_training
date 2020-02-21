import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'package:flutter_training/app/quiz/widgets/home.dart';
import 'package:flutter_training/app/scrolable_training/single_child_scroll_view_training.dart';

class ListViewTraining extends StatefulWidget {
  @override
  _ListViewTrainingState createState() => _ListViewTrainingState();
}

class _ListViewTrainingState extends State<ListViewTraining> {
  List<Activity> activity = [
    Activity("Velo ", Icons.directions_bike),
    Activity("backspace ", Icons.backspace),
    Activity("hearing", Icons.hearing),
    Activity("score ", Icons.score),
    Activity("Directions ", Icons.directions),
    Activity("Print ", Icons.print),
    Activity("Velo ", Icons.directions_bike),
    Activity("backspace ", Icons.backspace),
    Activity("hearing", Icons.hearing),
    Activity("score ", Icons.score),
    Activity("Directions ", Icons.directions),
    Activity("Print ", Icons.print),
    Activity("Velo ", Icons.directions_bike),
    Activity("backspace ", Icons.backspace),
    Activity("hearing", Icons.hearing),
    Activity("score ", Icons.score),
    Activity("Directions ", Icons.directions),
    Activity("Print ", Icons.print),
  ];

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: new Scaffold(
          appBar: AppBar(
            title: CustomText("Les scrolables"),
          ),
          body: Center(
            child: ListView.builder(
                itemCount: activity.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: CustomText("item => ${activity[i].name}"),
                    trailing: Icon(activity[i].icon),
                    leading: Icon(activity[i].icon),
                  );
                }),
          )),
    );
  }
}

class Activity {
  String name;
  IconData icon;

  Activity(String name, IconData icon) {
    this.name = name;
    this.icon = icon;
  }
}
