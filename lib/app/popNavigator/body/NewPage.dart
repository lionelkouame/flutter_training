import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  NewPage(String title) {
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          title,
          textScaleFactor: 1.5,
        ),
      ),
      body: new Center(
          child: new Text("Infos sur offre nouvelle page",
              textScaleFactor: 2.0, textAlign: TextAlign.center)),
    );
  }
}
