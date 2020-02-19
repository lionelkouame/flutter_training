import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class CalorieCalculator extends StatefulWidget {
  @override
  _CalorieCalculatorState createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {

  double poids;
  bool sexType = false;
  double age;
  double taille = 170.00;
  int radioSelected;

  Map mapActivity = {"Failble": 0, "Moyenne": 1, "Forte": 2};

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
              padding(),
              Card(
                elevation: 10.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CustomText(
                          'Homme',
                          color: Colors.blue,
                        ),
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
                    padding(),
                    RaisedButton(
                      child: CustomText((age != null)
                          ? "Vous avez ${age.toInt()} ans "
                          : "Choisir votre age"),
                      onPressed: displayAge,
                    ),
                    padding(),
                    CustomText("Votre taille est de : ${taille.toInt()}  cm"),
                    Slider(
                      value: taille,
                      onChanged: (double d) {
                        setState(() {
                          taille = d;
                        });
                      },
                      max: 215.0,
                      min: 100.0,
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
                    ),
                    CustomText("Quel est votre activité sportive"),
                    padding(),
                    rowRadio()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> displayAge() async {
    DateTime choice = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: DateTime.now(),
        firstDate: DateTime(1910),
        lastDate: DateTime(2050)
    );
    if (choice != null) {
      var delta = DateTime.now().difference(choice);
      var days = delta.inDays;
      var years = (days / 365);
      setState(() {
        age = years;
      });
    }
  }

  Padding padding() {
    return new Padding(padding: EdgeInsets.only(top: 20.0));
  }

  Color displaySexColor() {
    if (!sexType) {
      return Colors.blue;
    } else {
      return Colors.pink;
    }
  }

  Row rowRadio() {
    List<Widget> l = [];
    mapActivity.forEach((key, value) {
      Column colonne = Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Radio(
            value: value,
            groupValue: radioSelected,
            onChanged: (Object i) {
              setState(() {
                radioSelected = i;
              });
            },
          ),
          CustomText(key, color: displaySexColor())
        ],
      );
      l.add(colonne);
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: l,
    );
  }
}
