import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(60),
        ),
        color: Color.fromRGBO(132, 218, 165, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset("album.jpg", width: 65, height: 65),
          ),

          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 140,
                  child: Text(
                    "Now Playing",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 140,
                  child: Text(
                    "Lost in Amsterdam",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
           FlatButton(
                onPressed: () {},
                child: IconButton(
                  alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      icon: Icon( Icons.pause_circle_outline_sharp,),
                      color: Colors.grey[900],
                      iconSize: 45,
                      onPressed: () {},
                  
                ),
              ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
