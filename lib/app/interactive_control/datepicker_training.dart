import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class DatePickerTraining extends StatefulWidget {
  @override
  _DatePickerTrainingState createState() => _DatePickerTrainingState();
}

class _DatePickerTrainingState extends State<DatePickerTraining> {
  DateTime date;
  TimeOfDay time;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: CustomText("Date  et date picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: CustomText(
                  (date == null) ? "Choisir une date" : date.toString()),
              onPressed: displayDate,
            ),
            FlatButton(
              child: CustomText(
                  (date == null) ? "Choisir  l'heure ?" : date.toString()),
              onPressed: displayHours,
            ),
          ],
        ),
      ),
    );
  }

  Future<Null> displayDate() async {
    DateTime choice = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: DateTime.now(),
        firstDate: DateTime(1984),
        lastDate: DateTime(2045));
    if (choice != null) {
      setState(() {
        date = choice;
      });
    }
  }

  Future<Null> displayHours() async {
    TimeOfDay hours =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (hours != null) {
      hours = time;
    }
  }
}
