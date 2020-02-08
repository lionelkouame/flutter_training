import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class RadioTraining extends StatefulWidget {
  @override
  _RadioTrainingState createState() => _RadioTrainingState();
}

class _RadioTrainingState extends State<RadioTraining> {

  int itemSelection;

  List<Widget> radios() {
    List<Widget> l = [];
    for (int x = 0; x < 5; x++) {
      Row row = Row(
        children: <Widget>[
          CustomText("Le choix numero ${x + 1}",
              color: (x == itemSelection) ? Colors.green : Colors.red),
          Radio(
            value: x,
            groupValue: itemSelection,
            onChanged: (int i) {
              setState(() {
                itemSelection = i;
              });
            },
          )
        ],
      );
      l.add(row);
    }

    return l;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: CustomText("Boutton Radio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: radios(),
        ),
      ),
    );
  }
}
