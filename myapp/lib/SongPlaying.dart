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
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          SizedBox(width: 5),
          Column(
            children: [
              Text(
                "Now Playing",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
              ),
              Text(
                "Lost in Amsterdam",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
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
