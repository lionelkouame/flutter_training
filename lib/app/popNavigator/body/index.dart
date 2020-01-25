import 'package:flutter/material.dart';

class BodyIndex extends StatefulWidget {
  @override
  _BodyIndexState createState() => new _BodyIndexState();
}

class _BodyIndexState extends State<BodyIndex> {
  var btnValue = "";
  var btnStatus = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: RaisedButton(
        onPressed: snackTest,
        child: new Text(btnValue),
      ),
    );
  }

  void pressed() {
    setState(() {
      btnStatus = !btnStatus;
      (btnStatus) ? btnValue = "Btn is clicked" : btnValue = "clicked !!";
    });
  }

  void snackTest() {
    SnackBar snackbar = new SnackBar(
        content: new Text("Infos sur offre")
    );

    Scaffold.of(context).showSnackBar(snackbar);
  }
}
