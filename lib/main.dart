import 'dart:ffi';

import 'package:flutter/material.dart';
import 'app/music/Music.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Music app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Music> musics = [
    new Music('Theme Swift', "Lionel KOUAME", 'assets/un.jpg',
        "https://codabee.com/wp-content/uploads/2018/06/un.mp3"),
    new Music('Theme Flutter', "Henri Henri", 'assets/deux.jpg',
        "https://codabee.com/wp-content/uploads/2018/06/deux.mp3")
  ];

  Music musicCurrent;

  @override
  void initState() {
    super.initState();
    musicCurrent = musics[0];
  }

  @override
  Widget build(BuildContext context) {
    var documentsWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle:  true,
        backgroundColor: Colors.grey[900],
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Card(
              elevation: 9.0,
              child: new Container(
                width: documentsWidth / 2.5,
                child: new Image.asset(musicCurrent.imagePath),
              ),
            ),
            textWithPrimaryStyle(musicCurrent.title, 1.5),
            textWithPrimaryStyle(musicCurrent.author, 1.5),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  btnMusicPrimary(Icons.fast_rewind, 30.0, ActionMusic.rewind),
                  btnMusicPrimary(Icons.play_arrow, 45.0, ActionMusic.play),
                  btnMusicPrimary(Icons.fast_forward, 30.0, ActionMusic.forward)
                ]
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                textWithPrimaryStyle("0:0", 0.8),
                textWithPrimaryStyle("0:22", 0.8),
              ],
            )
          ],
        ),
      ),
    );
  }

  IconButton btnMusicPrimary(IconData iconData, double size,
      ActionMusic action) {
    return new IconButton(
        iconSize: size,
        color: Colors.white,
        icon: new Icon(iconData),
        onPressed: () {
          switch (action) {
            case ActionMusic.play:
              print('play');
              break;
            case ActionMusic.pause:
              print('pause');
              break;
            case ActionMusic.rewind:
              print('rewind');
              break;
            case ActionMusic.forward:
            // TODO: Handle this case.
              break;
          }
        }
    );
  }

  Text textWithPrimaryStyle(String value, double scale) {
    return new Text(value,
      textScaleFactor: scale,
      style: new TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontStyle: FontStyle.italic
      ),
    );
  }
}

enum ActionMusic {
  play,
  pause,
  rewind,
  forward
}
