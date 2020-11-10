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
          _UpsideBar(),
        ],
      ),
    );
  }
}

class _UpsideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.scale(
                scale: 0.8,
                child: FlatButton(
                  onPressed: () {},
                  child: IconButton(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.grey[600],
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(width: 40),
              Text(
                "Liked Songs",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(width: 40),
              FlatButton(
                onPressed: () {},
                child: IconButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Icon(Icons.more_horiz),
                  color: Colors.grey[300],
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
