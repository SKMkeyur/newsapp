import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:newsapp/backend/backend.dart';
import 'package:newsapp/screens/a_article.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Article extends StatefulWidget {
  static const sid = '/article';
  @override
  _ArticleState createState() => _ArticleState();

  // State<StatefulWidget> createState() {
  //   return _ArticleState();
  // }

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
    // await db.execute("CREATE TABLE bookmark ("
    //     "id INTEGER PRIMARY KEY,"
    //     "title TEXT,"
    //     "title TEXT,"
    //     ")");
  });
}

Database _database;

Future<Database> get database async {
  if (_database != null) return _database;

  // if _database is null we instantiate it
  _database = await initDB();
  return _database;
}

/// This is the private State class that goes with MyStatefulWidget.
class _ArticleState extends State<Article> {
  Blogdata blog_data;
  bool selected_bookmark = false;

  Icon bookmark_button_state =
      Icon(Icons.bookmark_border_outlined, color: Colors.grey);
  blog_datafun() async {
    blog_data = ModalRoute.of(context).settings.arguments;

    final db = await database;
    await db.execute(
        'CREATE TABLE IF NOT EXISTS bookmark(id TEXT,title TEXT,image TEXT)');
    int count = (Sqflite.firstIntValue(await db
        .rawQuery('SELECT COUNT(*) FROM bookmark WHERE id=' + blog_data.id)));
    if (count > 0) {
      bookmark_button_state = Icon(Icons.bookmark_added, color: Colors.grey);
      selected_bookmark = true;
    } else {
      // bookmark_button_state =
      //     Icon(Icons.bookmark_border_outlined, color: Colors.grey);
      // selected_bookmark = true;
    }

    // print(blog_data);
  }

  void initState() {
    super.initState();
    const oneSec = Duration(milliseconds: 100);
    new Timer.periodic(
        oneSec,
        (Timer t) => setState(() {
              blog_datafun();
            }));

    // WidgetsBinding.instance.addPostFrameCallback((_) => () {
    //
    //     });

    // initDB();
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    blog_datafun();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    const Key = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                IconButton(
                  icon: bookmark_button_state,
                  onPressed: () async {
                    if (selected_bookmark == false) {
                      insert_bookmark() async {
                        final db = await database;

                        int count = (Sqflite.firstIntValue(await db.rawQuery(
                            'SELECT COUNT(*) FROM bookmark WHERE id=' +
                                blog_data.id)));
                        if (count == 0) {
                          var res = await db.rawInsert(
                              'INSERT INTO bookmark(id,title,image) VALUES ("${blog_data.id}","${blog_data.title}","${blog_data.image}")');
                        }

                        // return res;
                      }

                      await insert_bookmark();
                      setState(() {
                        bookmark_button_state =
                            Icon(Icons.bookmark_added, color: Colors.grey);
                      });
                      selected_bookmark = true;
                    } else {
                      delete_bookmark() async {
                        final db = await database;
                        await db.rawDelete('DELETE FROM bookmark WHERE id =' +
                            blog_data.id.toString());
                        // db.close();
                      }

                      delete_bookmark();
                      setState(() {
                        bookmark_button_state = Icon(
                            Icons.bookmark_outline_outlined,
                            color: Colors.grey);
                        selected_bookmark = false;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      SliverList(
          delegate: SliverChildListDelegate(
        [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Container(
                      height: height / 4,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xfff4f4f6))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(blog_data.image,
                              width: width,
                              height: height / 5,
                              fit: BoxFit.cover)))),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text("     News     ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff))),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(15, 5, 15, 5)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff475bd8),
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                      onPressed: () {
                        Navigator.pushNamed(context, A_article.sid);
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(blog_data.title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff000000)))),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: Image.network(blog_data.t2,
                            height: 72, width: 72, fit: BoxFit.cover),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                  (() {
                                    if (blog_data.caption.toString().length >
                                        10) {
                                      return blog_data.caption
                                          .toString()
                                          .substring(0, 10);
                                    } else {
                                      if (blog_data.caption == null) {
                                        return "N/A";
                                      } else {
                                        return blog_data.caption.toString();
                                      }
                                    }
                                  }()),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)))
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                  blog_data.published
                                      .toString()
                                      .substring(0, 10),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff676d87),
                                  ))
                            ],
                          ),
                        ],
                      )),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                  child: Text("Read Here",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000)))),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(() {
                  if (blog_data.desc == null) {
                    return "no description";
                  } else {
                    return blog_data.desc.toString();
                  }
                }(),
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
              ),
            ],
          )
        ],
      ))
    ]));
  }
}
