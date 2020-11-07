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
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Text(
                  "Liked Songs",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
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
