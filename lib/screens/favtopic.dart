import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp/screens/bnavbar.dart';

class Favtopic extends StatefulWidget {
  @override
  static const sid = 'Favtopic';
  State<StatefulWidget> createState() {
    return _FavtopicState();
  }
}

class _FavtopicState extends State<Favtopic> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
            child: Text("Select your favorite topics",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
        ),
        Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 50),
              child: Text(
                  "Select some of your favorite topics to let us suggest better news for you",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey)),
            )),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: SingleChildScrollView(
              child: Row(children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 15),
                          child: Container(
                              height: 75,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Color(0xfff3f4f6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: const Icon(
                                          FontAwesomeIcons.footballBall,
                                          color: Color(0xff676d87)),
                                      onPressed: () {
                                        setState(() {
                                          // Navigator.pushNamed(context, Welcomescreen.sid);
                                        });
                                      },
                                    )),
                              ))),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: TextButton(
                    child: Text("           Next           ".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(15, 20, 15, 20)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue)))),
                    onPressed: () =>
                        Navigator.pushNamed(context, Bnavbar.sid))),
          ],
        ),
      ]),
    );
  }
}
