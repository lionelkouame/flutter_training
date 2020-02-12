import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class CalorieCalculator extends StatefulWidget {
  @override
  _CalorieCalculatorState createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {

  double poids;
  bool sexType = false;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: new Scaffold(
        appBar: AppBar(
          title: CustomText("Calcul de calories"),
          backgroundColor: displaySexColor(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CustomText(
                  "Remplissez tous les champs pour obtenir votre besoin journalier en calorie."),
              Card(
                elevation: 10.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomText('Homme', color: Colors.blue,),
                        Switch(
                          value: sexType,
                          inactiveTrackColor: Colors.blue,
                          activeColor: Colors.pink,
                          onChanged: (bool b) {
                            setState(() {
                              sexType = b;
                            });
                          },),
                        CustomText('Femme', color: Colors.pink,),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (String string) {
                        setState(() {
                          poids = double.tryParse(string);
                        });
                      },
                      decoration: InputDecoration(
                          labelText: "Entrez votre poids en kilos"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color displaySexColor() {
    if (!sexType) {
      return Colors.blue;
    } else {
      return Colors.pink;
    }
  }
}
