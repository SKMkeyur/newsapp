import 'package:flutter/material.dart';
import 'package:newsapp/screens/profile.dart';

class Language extends StatefulWidget {
  @override
  static const sid = 'language';
  State<StatefulWidget> createState() {
    return _LanguageState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _LanguageState extends State<Language> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: Text('Language',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
            ],
          )),
      SliverToBoxAdapter(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: GestureDetector(
                    onTap: () => {},
                    child: Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        width: 500,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xfff3f4f6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'English',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff676d87),
                                ),
                              )),
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      //   width: 500,
                      //   height: 60,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xfff3f4f6),
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      //     child: Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Text(
                      //           'Turkish',
                      //           textAlign: TextAlign.left,
                      //           style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 18,
                      //             color: Color(0xff676d87),
                      //           ),
                      //         )),
                      //   ),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      //   width: 500,
                      //   height: 60,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xfff3f4f6),
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      //     child: Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Text(
                      //           'German',
                      //           textAlign: TextAlign.left,
                      //           style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 18,
                      //             color: Color(0xff676d87),
                      //           ),
                      //         )),
                      //   ),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      //   width: 500,
                      //   height: 60,
                      //   decoration: BoxDecoration(
                      //     color: Color(0xfff3f4f6),
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      //     child: Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Text(
                      //           'Spanish',
                      //           textAlign: TextAlign.left,
                      //           style: TextStyle(
                      //             fontWeight: FontWeight.bold,
                      //             fontSize: 18,
                      //             color: Color(0xff676d87),
                      //           ),
                      //         )),
                      //   ),
                      // ),
                    ]),
                  )),
            ]),
          ),
        ),
      )
    ]));
  }
}
