import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp/screens/language.dart';
import 'package:newsapp/screens/terms.dart';
import 'package:newsapp/screens/policy.dart';

List name = ["Test ", "null"];
List email = ["test@mail.com ", "null"];

class Profile extends StatefulWidget {
  @override
  static const sid = 'profile';
  State<StatefulWidget> createState() {
    return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  int _current = 0;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Hello')),
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: const <Widget>[
                    Spacer(), // Defaults to a flex of one.
                  ],
                )),
            Expanded(
                flex: 2,
                child:
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 20),
                      child: Text('Profile',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))),
                ])),
            Expanded(
                flex: 1,
                child: Row(children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Image.asset('graphic_res/welcome.png',
                          height: 72, width: 72, fit: BoxFit.cover),
                    )
                  ]),
                  Column(children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text.rich(
                                      TextSpan(
                                        text: name[0],
                                      ),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black))),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text.rich(
                                      TextSpan(
                                        text: email[0],
                                      ),
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey))),
                            ]))
                  ])
                ])),
            Expanded(
                flex: 7,
                child: Container(
                  child: Column(children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xfff3f4f6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 0, 0),
                                      child: Text(
                                        'Notification',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff676d87),
                                        ),
                                      ))),
                              Column(children: [
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Transform.scale(
                                              scale: 1,
                                              child: Switch(
                                                onChanged: toggleSwitch,
                                                value: isSwitched,
                                                activeColor: Colors.white,
                                                activeTrackColor:
                                                    Colors.blueAccent,
                                                inactiveThumbColor:
                                                    Colors.white,
                                                inactiveTrackColor: Colors.grey,
                                              ))),
                                    )),
                              ])
                            ],
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 18, 15, 0),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xfff3f4f6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 40, 0),
                                      child: Text(
                                        'Language',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff676d87),
                                        ),
                                      ))),
                              Column(children: [
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: IconButton(
                                            icon: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xff676d87)),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Language()),
                                              );
                                            },
                                          )),
                                    ))
                              ])
                            ],
                          ),
                        )),
                    // Padding(
                    //     padding: const EdgeInsets.fromLTRB(15, 18, 15, 15),
                    //     child: Container(
                    //       height: 55,
                    //       decoration: BoxDecoration(
                    //           color: Color(0xfff3f4f6),
                    //           borderRadius: BorderRadius.circular(10)),
                    //       child: Row(
                    //         children: <Widget>[
                    //           Expanded(
                    //               flex: 5,
                    //               child: Padding(
                    //                   padding: const EdgeInsets.fromLTRB(
                    //                       15, 0, 0, 0),
                    //                   child: Text(
                    //                     'Change Password',
                    //                     textAlign: TextAlign.start,
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.bold,
                    //                       fontSize: 18,
                    //                       color: Color(0xff676d87),
                    //                     ),
                    //                   ))),
                    //           Column(children: [
                    //             Expanded(
                    //                 flex: 5,
                    //                 child: Padding(
                    //                   padding:
                    //                       const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                   child: Align(
                    //                       alignment: Alignment.centerLeft,
                    //                       child: IconButton(
                    //                         icon: const Icon(
                    //                             Icons.arrow_forward_ios,
                    //                             color: Color(0xff676d87)),
                    //                         onPressed: () {
                    //                           setState(() {
                    //                             // Navigator.pushNamed(context, Welcomescreen.sid);
                    //                           });
                    //                         },
                    //                       )),
                    //                 ))
                    //           ])
                    //         ],
                    //       ),
                    //     )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 18, 15, 0),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xfff3f4f6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 0, 0),
                                      child: Text(
                                        'Privacy',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff676d87),
                                        ),
                                      ))),
                              Column(children: [
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: IconButton(
                                            icon: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xff676d87)),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Policy()),
                                              );
                                            },
                                          )),
                                    ))
                              ])
                            ],
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 18, 15, 15),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color(0xfff3f4f6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 5,
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 0, 0),
                                      child: Text(
                                        'Terms & Conditions',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xff676d87),
                                        ),
                                      ))),
                              Column(children: [
                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: IconButton(
                                            icon: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xff676d87)),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Terms()),
                                              );
                                            },
                                          ),
                                        )))
                              ])
                            ],
                          ),
                        )),
                    // Padding(
                    //     padding: const EdgeInsets.fromLTRB(15, 18, 15, 0),
                    //     child: Container(
                    //       height: 55,
                    //       decoration: BoxDecoration(
                    //           color: Color(0xfff3f4f6),
                    //           borderRadius: BorderRadius.circular(10)),
                    //       child: Row(
                    //         children: <Widget>[
                    //           Expanded(
                    //               flex: 5,
                    //               child: Padding(
                    //                   padding: const EdgeInsets.fromLTRB(
                    //                       15, 0, 0, 0),
                    //                   child: Text(
                    //                     'Sign Out',
                    //                     textAlign: TextAlign.start,
                    //                     style: TextStyle(
                    //                       fontWeight: FontWeight.bold,
                    //                       fontSize: 18,
                    //                       color: Color(0xff676d87),
                    //                     ),
                    //                   ))),
                    //           Column(children: [
                    //             Expanded(
                    //                 flex: 5,
                    //                 child: Padding(
                    //                   padding:
                    //                       const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //                   child: Align(
                    //                       alignment: Alignment.centerLeft,
                    //                       child: IconButton(
                    //                         icon: const Icon(
                    //                             FontAwesomeIcons.signOutAlt,
                    //                             color: Color(0xff676d87)),
                    //                         onPressed: () {
                    //                           setState(() {
                    //                             // Navigator.pushNamed(context, Welcomescreen.sid);
                    //                           });
                    //                         },
                    //                       )),
                    //                 ))
                    //           ])
                    //         ],
                    //       ),
                    //     )),
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
