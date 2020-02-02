import 'package:flutter/material.dart';
import 'package:flutter_training/app/interactive_widget/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz  Application',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Homepage(title: "Mes widgets interactives",),
    );
  }
}
