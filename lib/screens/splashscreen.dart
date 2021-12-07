import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapp/screens/onboarding.dart';

// ignore: camel_case_types
class Splashscreen extends StatefulWidget {
  @override
  static const sid = 'splashscreen';
  State<StatefulWidget> createState() {
    return _SplashscreenState();
  }
}

class _SplashscreenState extends State<Splashscreen> {
  int _current = 0;
  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, Onboarding.sid);
    });
    const oneSec = Duration(seconds: 2);
    // new Timer.periodic(
    //     oneSec,
    //     (Timer t) => setState(() {
    //           Navigator.pushNamed(context, Onboarding.sid);
    //         }));
    // const oneSec = Duration(seconds: 2);
    // new Timer.periodic(
    //     oneSec,
    //     (Timer t) => () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => Onboarding(),
    //             ),
    //           );
    //         });
    // Timer(
    //     Duration(seconds: 3),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Onboarding.sid())));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        // Swiping in right direction.
        if (details.delta.dx > 0) {}
        Navigator.pushNamed(context, Onboarding.sid);
        // Swiping in left direction.
        if (details.delta.dx < 0) {}
      },
      child: Container(
          color: Color(0xFF475BD8),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('graphic_res/logo.png'),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              // child: Text("Microsoft",
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //         decoration: TextDecoration.none,
              //         fontSize: 25.0,
              //         fontWeight: FontWeight.normal,
              //         color: Colors.white)),
            )
          ])),
    );
  }
}
