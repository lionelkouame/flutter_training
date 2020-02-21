import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';
import 'package:flutter_training/app/quiz/widgets/home.dart';
import 'package:flutter_training/app/scrolable_training/single_child_scroll_view_training.dart';

class CustomTileTraining extends StatefulWidget {
  @override
  _CustomTileTrainingState createState() => _CustomTileTrainingState();
}

class _CustomTileTrainingState extends State<CustomTileTraining> {
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
            title: CustomText("List View"),
          ),
          body: Center(
            child: ListView.builder(
                itemCount: activity.length,
                itemBuilder: (context, i) {
                  Activity activ = activity[i];
                  String key = activ.name;
                  return Dismissible(
                    key: Key(key),
                    child: Container(
                      height: 125.20,
                      padding: EdgeInsets.all(10),
                      child: Card(
                        elevation: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(activ.icon),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CustomText(
                                  'Activité',
                                  factor: 1,
                                ),
                                CustomText(
                                  activ.name,
                                  factor: 2.5,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    background: Container(
                      padding: EdgeInsets.only(right: 30.0),
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          CustomText(
                            'Supprimer',
                            color: Colors.white,
                            factor: 2.0,
                          ),
                          Icon(Icons.delete)
                        ],
                      ),
                    ),
                    onDismissed: (direction) {
                      print(activ);
                      activity.removeAt(i);
                    },
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
