import 'package:flutter/material.dart';

import 'SongPlaying.dart';
import 'UserPanel.dart';


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          UserPanel(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SongPlaying(),
          ),
        ],
      ),
    );
  }
}
