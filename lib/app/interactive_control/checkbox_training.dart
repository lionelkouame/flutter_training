import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class CheckboxTraining extends StatefulWidget {
  @override
  _CheckboxTrainingState createState() => _CheckboxTrainingState();
}

class _CheckboxTrainingState extends State<CheckboxTraining> {
  Map check = {
    'Carote': false,
    'Bannane': false,
    'Pain': false,
    'Orange': false,
    'Bissap': false,
  };

  List<Widget> displayChecklist() {
    List<Widget> l = [];
    check.forEach((key, value) {
      Row row = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CustomText(
            key,
            factor: 1.5,
            color: (value) ? Colors.green : Colors.red,
          ),
          Checkbox(
            value: (value),
            onChanged: (bool b) {
              setState(() {
                check[key] = b;
              });
            },
          )
        ],
      );
      l.add(row);
    });

    return l;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: CustomText("Page  de Checkox raining"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: displayChecklist(),
      )),
    );
  }
}
