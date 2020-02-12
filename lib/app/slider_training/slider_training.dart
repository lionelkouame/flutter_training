import 'package:flutter/material.dart';
import 'package:flutter_training/app/quiz/widgets/custom_text.dart';

class SliderTraining extends StatefulWidget {
  @override
  _SliderTraining createState() => _SliderTraining();
}

class _SliderTraining extends State<SliderTraining> {
  double sliderDouble = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: CustomText('Le slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText('Valeur du slider $sliderDouble'),
            Slider(
              value: sliderDouble,
              min: 00.0,
              max: 5.0,
              onChanged: (double d) {
                setState(() {
                  sliderDouble = d;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
