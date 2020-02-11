import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class SwitchTraining extends StatefulWidget {
  @override
  _SwitchTrainingState createState() => _SwitchTrainingState();
}

class _SwitchTrainingState extends State<SwitchTraining> {
  bool btnSwitch;

  List<Widget> displayOptons() {
    List<Widget> l = [];
    List<String> labels = ['manger', 'Dormie', 'Jouer jeux videos', 'photos'];

    int labelLenght = labels.length;
    bool btnSwtich = false;
    for (int i = 0; i < labelLenght; i++) {
      Row row = Row(
        children: <Widget>[
          CustomText(labels[i]),
          Switch(
            value: btnSwtich,
            onChanged: (bool b) {
              setState(() {
                btnSwtich = b;
                print(b);
                print(btnSwtich);
              });
            },
          )
        ],
      );

      l.add(row);
    }

    return l;
  }

  bool testToogle = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: CustomText("Le switch training"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CustomText("My Switch  GoooooD",
                color: (testToogle) ? Colors.green : Colors.red),
            Switch(
              value: testToogle,
              onChanged: (bool b) {
                setState(() {
                  testToogle = b;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
