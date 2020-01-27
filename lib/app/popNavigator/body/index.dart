import 'package:flutter/material.dart';
import 'package:flutter_training/app/popNavigator/body/NewPage.dart';


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
        child: new Text(btnValue),
        onPressed: routeToNewPage,
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

  Future<Null> alert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text("Test Alert  Dialog", textScaleFactor: 1.5,),
            content: new Text("I AM PRESENT application problem continue ???",
                textScaleFactor: 1.0),
            contentPadding: EdgeInsets.all(5.0),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    print('Abor Action');
                    Navigator.pop(context);
                  },
                  child: new Text("Cancel", textScaleFactor: 1.0)),
              new FlatButton(
                  onPressed: () {
                    print('Continue Action');
                    Navigator.pop(context);
                  },
                  child: new Text("Continuel", textScaleFactor: 1.0))
            ],
          );
        }
    );
  }

  Future<Null> alertDialogTest() async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text("Alert dialogue test"),
            content: new Text("Alert dialogue test"),
            contentPadding: EdgeInsets.all(15.0),
            actions: <Widget>[
              new RaisedButton(
                  onPressed: () {
                    print("OK is ok");
                    Navigator.pop(context);
                  }
                  , child: new Text("OK")),

            ],
          );
        }
    );
  }

  void routeToNewPage() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (BuildContext context) {
      return new NewPage("Je suis une nouvelle page");
    }));
  }

}
