import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(60),
        ),
        color: Color.fromRGBO(132, 218, 165, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          SizedBox(width: 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Now Playing",
                style: TextStyle(),
              ),
              Text("Lost in Amsterdam"),
            ],
          ),
          Container(
            width: 30,
            height: 30,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
