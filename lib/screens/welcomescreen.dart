import 'package:flutter/material.dart';
import 'package:newsapp/screens/enterdetails.dart';

class Welcomescreen extends StatefulWidget {
  @override
  static const sid = 'Welcomescreen';
  State<StatefulWidget> createState() {
    return _WelcomescreenState();
  }
}

class _WelcomescreenState extends State<Welcomescreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(children: [
        // Expanded(
        //   flex: 1,
        //   child: Container(
        //     padding: EdgeInsets.only(top: 10, bottom: 40.0),
        //   ),
        // ),
        Expanded(
            flex: 6,
            child: Wrap(children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Image.asset('graphic_res/welcome.png'),
              ),
            ])),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text("SPORT NEWS",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            )),
        Expanded(
            flex: 2,
            child: Text(
                "All News in one place, be the\n"
                "first to know the last news",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey))),
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextButton(
                  child: Text(
                      "                               Get Started                               "
                          .toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.fromLTRB(15, 20, 15, 20)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue)))),
                  onPressed: () =>
                      Navigator.pushNamed(context, Enterdetails.sid)),
            ))
      ]),
    );
  }
}
