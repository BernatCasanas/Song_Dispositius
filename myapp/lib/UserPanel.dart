import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _Menu(),
          _SongList(),
        ],
      ),
    );
  }
}

class _SongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Container(
        color: Color.fromRGBO(36, 36, 36, 1),
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Color.fromRGBO(22, 22, 22, 1),
      ),
    );
  }
}
