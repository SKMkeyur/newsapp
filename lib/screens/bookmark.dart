import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Bookmark extends StatefulWidget {
  @override
  static const sid = 'bookmark';
  State<StatefulWidget> createState() {
    return _BookmarkState();
  }
}

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
}

initDB() async {
  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = documentsDirectory.path + "sport.db";
  return await openDatabase(path, version: 1, onOpen: (db) {},
      onCreate: (Database db, int version) async {
    // await db.execute("bookmark");
  });
}

Database _database;

Future<Database> get database async {
  if (_database != null) return _database;

  // if _database is null we instantiate it
  _database = await initDB();
  return _database;
}

List<Map> bookmark_list = List();
fetch_bookmark() async {
  final db = await database;
  bookmark_list = await db.query("bookmark");
  // bookmark_list = await db.rawQuery("SELECT * FROM bookmark");

  // return res;
}

class _BookmarkState extends State<Bookmark> {
  @override
  void initState() {
    super.initState();
    fetch_bookmark();
    const oneSec = Duration(seconds: 1);
    new Timer.periodic(
        oneSec,
        (Timer t) => setState(() {
              fetch_bookmark();
            }));
    // post = fetchPost();
  }

  void didChangedependencies() {
    super.didChangeDependencies();
    fetch_bookmark();
  }

  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');

    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverList(
          delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
            child: Text("Bookmarks",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 20),
            child: Text("Saved articles to the library",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: bookmark_list.map((Map<dynamic, dynamic> data) {
              //  print(data);
              return Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13.0)),
                                    child: Image.network(
                                        data["image"].toString(),
                                        width: 90,
                                        height: 90,
                                        fit: BoxFit.cover))),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 0, 15),
                                  child: Text(
                                      data["title"].toString().substring(0, 10),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff676d87))))
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 0, 15),
                                  child: Text(
                                      data["title"].toString().substring(0, 10),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)))
                            ],
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 4,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: IconButton(
                                icon: const Icon(FontAwesomeIcons.times,
                                    color: Color(0xff676d87)),
                                onPressed: () {
                                  delete_bookmark() async {
                                    final db = await database;
                                    await db.rawDelete(
                                        'DELETE FROM bookmark WHERE id =' +
                                            data["id"].toString());
                                    // db.close();
                                  }

                                  delete_bookmark();
                                },
                              )),
                        ],
                      )),
                ],
              );
            }).toList(),
          ),

          // Expanded(
          //   child:
          //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          //           Widget>[
          //     Row(
          //       children: [
          //         Expanded(
          //             flex: 3,
          //             child: Column(
          //               children: [
          //                 Container(
          //                     margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
          //                     child: ClipRRect(
          //                         borderRadius:
          //                             BorderRadius.all(Radius.circular(13.0)),
          //                         child: Image.network(
          //                             'https://image.freepik.com/free-photo/man-sits-end-trolltunga-before-mountains_1304-5318.jpg',
          //                             width: 90,
          //                             height: 90,
          //                             fit: BoxFit.cover))),
          //               ],
          //             )),
          //         Expanded(
          //             flex: 7,
          //             child: Column(
          //               // crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Row(
          //                   children: [
          //                     Padding(
          //                         padding:
          //                             const EdgeInsets.fromLTRB(15, 0, 0, 15),
          //                         child: Text('UI/UX Design',
          //                             textAlign: TextAlign.left,
          //                             style: TextStyle(
          //                                 fontSize: 15.0,
          //                                 fontWeight: FontWeight.normal,
          //                                 color: Color(0xff676d87))))
          //                   ],
          //                 ),
          //                 Row(
          //                   children: [
          //                     Padding(
          //                         padding:
          //                             const EdgeInsets.fromLTRB(15, 0, 0, 15),
          //                         child: Text('Testing ',
          //                             textAlign: TextAlign.left,
          //                             style: TextStyle(
          //                                 fontSize: 20.0,
          //                                 fontWeight: FontWeight.bold,
          //                                 color: Colors.black)))
          //                   ],
          //                 ),
          //               ],
          //             )),
          //       ],
          //     ),
          //   ]),
          // )
        ],
      ))
    ]));
  }
}
