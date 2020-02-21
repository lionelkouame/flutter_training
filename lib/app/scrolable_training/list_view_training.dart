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
                  Activity activ = activity[i];
                  String key = activ.name;
                  return Dismissible(
                    key: Key(key),
                    child:
                    ListTile(
                      title: CustomText(activ.name),
                      trailing: Icon(activ.icon),
                      leading: Icon(activ.icon),
                    ),
                    background: Container(
                      padding: EdgeInsets.only(right: 30.0),
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          CustomText(
                            'Supprimer', color: Colors.white, factor: 2.0,),
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
