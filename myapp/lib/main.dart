import 'package:flutter/material.dart';

import 'SongPlaying.dart';
import 'UserPanel.dart';

class Song {
  @required
  String name;
  @required
  String author;
  @required
  String album;
  bool playing;

  Song({this.name, this.author, this.album, this.playing});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  List<Song> songs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          UserPanel(),
          SongPlaying(),
        ],
      ),
    );
  }
}
