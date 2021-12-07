import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp/screens/bookmark.dart';

class Nullbookmark extends StatefulWidget {
  @override
  static const sid = 'nullbookmark';
  State<StatefulWidget> createState() {
    return _NullbookmarkState();
  }
}

class _NullbookmarkState extends State<Nullbookmark> {
  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
        body: Column(children: [
      Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
          child: Text("Bookmarks",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
      ]),
      Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Text("Saved articles to the library",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey)),
        )
      ]),
      Column(children: <Widget>[
        Center(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bookmark()),
                  );
                },
                child: Text("more"))),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                width: 85,
                height: 85,
                margin: EdgeInsets.all(100.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xfff3f4f6),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
                    child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: const Icon(FontAwesomeIcons.book,
                              size: 20, color: Color(0xff676d87)),
                          onPressed: () {
                            setState(() {
                              // Navigator.pushNamed(context, Welcomescreen.sid);
                            });
                          },
                        )),
                  ),
                ]))),
        Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(
                "You haven't saved any articles yet. Start reading and bookmarking them now.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey))),
      ])
    ]));
  }
}
