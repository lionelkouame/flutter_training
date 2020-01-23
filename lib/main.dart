import 'dart:async';

import 'package:flutter/material.dart';
import 'app/music/Music.dart';
import 'package:audioplayer/audioplayer.dart';

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

  AudioPlayer audioPlayer;
  Music musicCurrent;
  Duration position = new Duration(seconds: 0);
  Duration durationSong = new Duration(seconds: 10);
  StreamSubscription positionSub;
  StreamSubscription stateSub;
  PlayerState status = PlayerState.stopped;
  int index = 0;



  @override
  void initState() {
    super.initState();
    musicCurrent = musics[0];
    audioPlayerConfig();
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
                  btnMusicPrimary(
                      (status == PlayerState.playing) ? Icons.pause : Icons
                          .play_arrow,
                      45.0,
                      (status == PlayerState.playing)
                          ? ActionMusic.pause
                          : ActionMusic.play),
                  btnMusicPrimary(Icons.fast_forward, 30.0, ActionMusic.forward)
                ]
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                textWithPrimaryStyle("0:0", 0.8),
                textWithPrimaryStyle("0:22", 0.8),
              ],
            ),
            new Slider(
                value: position.inSeconds.toDouble(),
                min: 0.0,
                max: 30.0,
                inactiveColor: Colors.white,
                activeColor: Colors.red,
                onChanged: (double d) {
                  setState(() {
                    Duration newDuration = new Duration(seconds: d.toInt());
                    position = newDuration;
                  });
                }),
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
              play();
              break;
            case ActionMusic.pause:
              pause();
              break;
            case ActionMusic.rewind:
              print('rewind');
              break;
            case ActionMusic.forward:
              forward();
              audioPlayer.stop();
              audioPlayerConfig();
              play();
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

  void audioPlayerConfig() {
    audioPlayer = new AudioPlayer();
    positionSub = audioPlayer.onAudioPositionChanged.listen(
            (pos) => setState(() => position = pos)
    );
    stateSub = audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == AudioPlayerState.PLAYING) {
        setState(() {
          durationSong = audioPlayer.duration;
        });
      } else if (state == AudioPlayerState.STOPPED) {
        setState(() {
          status = PlayerState.stopped;
        });
      }
    },
        onError: (message) {
          print(" Erreur : $message");
          setState(() {
            durationSong = new Duration(seconds: 0);
            position = new Duration(seconds: 0);
          });
        });
  }

  Future play() async {
    await audioPlayer.play(musicCurrent.urlSong);
    setState(() {
      status = PlayerState.playing;
    });
  }

  Future pause() async {
    await audioPlayer.pause();
    setState(() {
      status = PlayerState.pause;
    });
  }

  void forward() {
    if (index == musics.length) {
      index = 0;
    } else {
      index++;
    }
    musicCurrent = musics[index];
  }

}

enum ActionMusic {
  play,
  pause,
  rewind,
  forward
}
enum PlayerState {
  playing,
  stopped,
  pause
}
