import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class UserPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(flex: 1, child: _Menu()),
          Expanded(flex: 3, child: _SongList()),
        ],
      ),
    );
  }
}

class _SongList extends StatelessWidget {
  List<Song> songs = new List();
  bool download = true;

  @override
  Widget build(BuildContext context) {
    //Adding all the songs
    songs.add(Song(
        name: "Fever - Radio Edit",
        album: "Adam Freeland",
        author: "Sarah Vaughan",
        playing: false));
    songs.add(Song(
        name: "Lost In Amsterdam",
        album: "Shine",
        author: "Parow Stelar",
        playing: true));
    songs.add(Song(
        name: "Vanished World",
        album: "Memory Drop",
        author: "Oi Va Voi",
        playing: false));
    songs.add(Song(
        name: "Aegls - Original Mix",
        album: "Be A Man You Ant",
        author: "André Bratten",
        playing: false));
    songs.add(Song(
        name: "Murder to the Mind",
        album: "Slow State",
        author: "Tash Sultana",
        playing: false));
    songs.add(Song(
        name: "See Me",
        album: "On The Quiet",
        author: "Xinobi",
        playing: false));
    songs.add(Song(
        name: "Arayan Bulur",
        album: "Firtnayt",
        author: "Büyük Ev Ablukada",
        playing: false));

    return Stack(children: [
      Container(
        color: Color.fromRGBO(36, 36, 36, 1),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15, right: 10, top: 95),
        child: Column(
          children: [
            _Download(download: download),
            SizedBox(height: 35),
            for (var item in songs) CreateListSong(item)
          ],
        ),
      ),
    ]);
  }
}

Widget CreateListSong(Song item) {
  return Column(
    children: [
      FlatButton(
        onPressed: () {  },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  if (item.playing)
                    IconButton(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      icon: Icon(Icons.volume_up),
                      color: Color.fromRGBO(132, 218, 165, 1),
                      onPressed: () {},
                    ),
                  if (item.playing) SizedBox(width: 12),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 160,
                          child: Text(
                            item.name,
                            style: TextStyle(
                              color: item.playing
                                  ? Color.fromRGBO(132, 218, 165, 1)
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 160,
                          child: Row(
                            children: [
                              Text(
                                item.author,
                                style: TextStyle(
                                  color: item.playing
                                      ? Color.fromRGBO(132, 218, 165, 0.6)
                                      : Colors.grey[500],
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                " · ",
                                style: TextStyle(
                                  color: item.playing
                                      ? Color.fromRGBO(132, 218, 165, 0.6)
                                      : Colors.grey[500],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                item.album,
                                style: TextStyle(
                                  color: item.playing
                                      ? Color.fromRGBO(132, 218, 165, 0.6)
                                      : Colors.grey[500],
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: IconButton(
                icon: Icon(Icons.more_horiz),
                color: Colors.grey[700],
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 35)
    ],
  );
}

class _Download extends StatelessWidget {
  const _Download({
    Key key,
    @required this.download,
  }) : super(key: key);

  final bool download;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Download",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey[500],
            ),
          ),
          Switch(
            value: download,
            onChanged: (bool value) {},
            activeColor: Color.fromRGBO(132, 218, 165, 1),
            activeTrackColor: Color.fromRGBO(132, 218, 165, 0.2),
          ),
        ],
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // clipBehavior: Clip.,
      children: [
        Container(
          color: Color.fromRGBO(22, 22, 22, 1),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Transform.rotate(
                angle: -pi / 2,
                child: Text(
                  "Albums",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Transform.rotate(
                angle: -pi / 2,
                child: Text(
                  "·",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Transform.rotate(
                angle: -pi / 2,
                child: Text(
                  "Playlists ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Transform.rotate(
                angle: -pi / 2,
                child: Text(
                  "·",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Transform.rotate(
                angle: -pi / 2,
                child: Text(
                  "Songs",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(132, 218, 165, 1),
                  ),
                ),
              ),
              SizedBox(height: 240),
            ],
          ),
        ),
        Positioned(
          bottom: 299,
          right: -183,
          child: Transform.rotate(
            angle: pi / 7,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(36, 36, 36, 1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                  bottom: Radius.circular(30),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 254,
          right: -165,
          child: Transform.rotate(
            angle: -pi / 4.3,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(36, 36, 36, 1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(80),
                  bottom: Radius.circular(80),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 205,
          right: -183,
          child: Transform.rotate(
            angle: -pi / 8,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromRGBO(36, 36, 36, 1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                  bottom: Radius.circular(30),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 337,
          right: 0,
          child: Transform.rotate(
            angle: -pi / 4.3,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Color.fromRGBO(108, 165, 117, 1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(80),
                  bottom: Radius.circular(80),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
