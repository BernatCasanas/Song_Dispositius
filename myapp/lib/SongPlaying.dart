import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(60),
        ),
        color: Color.fromRGBO(132, 218, 165, 1),
      ),
    );
  }
}
