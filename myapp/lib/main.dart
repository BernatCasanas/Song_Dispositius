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
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(width: 40),
                    Text(
                      "Liked Songs",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[300],
                      ),
                    ),
                    SizedBox(width: 40),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
