import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp/screens/welcomescreen.dart';

// ignore: camel_case_types
class A_article extends StatefulWidget {
  static const sid = 'a_article';
  State<StatefulWidget> createState() {
    return _A_articleState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _A_articleState extends State<A_article> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    const Key = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverList(
          delegate: SliverChildListDelegate([
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 1,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Color(0xff000000))),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                          'https://image.freepik.com/free-vector/illustrated-colorful-abstract-parrot_516246-5.jpg',
                          width: width,
                          height: height / 3,
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 50.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.bookmark_border_outlined,
                            color: Colors.grey),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, Welcomescreen.sid);
                          });
                        },
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 80.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.forward_rounded,
                            color: Colors.grey),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, Welcomescreen.sid);
                          });
                        },
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 270.0,
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            child: Text("     US Election     ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffffff))),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.fromLTRB(15, 5, 15, 5)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xff475bd8),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ))),
                            onPressed: () {
                              setState(() {});
                            },
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 350.0,
                    left: 0.0,
                    right: 0.0,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                            "The Latest situation in the presidential election",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffffffff))))),
                Positioned(
                    top: 420.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: height / 1,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 25.0,
                            ),
                          ]),
                      child: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 25, 0, 15),
                                    child: Text("Results",
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000000)))),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text(
                                      'Nam sit amet velit imperdiet, cursus ligula et, congue odio. Donec vitae laoreet quam. Ut ullamcorper quam sit amet mi dapibus, eu efficitur erat lobortis. Phasellus ipsum sem, rutrum mollis porttitor non, sagittis a mi. Proin aliquam faucibus tellus, id tincidunt ex. Quisque sed lectus lacinia, convallis lacus quis, fringilla tortor. Vivamus venenatis id eros id luctus. Donec eu ex eget lorem accumsan faucibus. Suspendisse sit amet lectus ut lorem pharetra ornare. Etiam congue enim elit. Nunc consectetur auctor tellus, vel ultrices ligula sodales sed. Praesent eu viverra.',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey)),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Container(
                                        height: height / 4,
                                        width: width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Color(0xfff4f4f6))),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                                'https://image.freepik.com/free-vector/vector-green-soccer-field-football-field-gridiron_1284-41290.jpg',
                                                width: width,
                                                height: height / 5,
                                                fit: BoxFit.cover)))),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque arcu erat, lacinia congue bibendum in, eleifend id leo. \n\n Donec tempus, magna ut faucibus rutrum, mauris augue placerat lorem, non dapibus arcu turpis in augue. In venenatis luctus risus, quis pellentesque ligula semper dapibus. Ut blandit mauris ac est varius, sit amet efficitur purus sagittis. In consequat lobortis sapien finibus convallis. Donec eleifend bibendum dapibus. Donec id ante eros. Morbi maximus pulvinar ultricies. Sed feugiat pharetra lacus, eget fermentum ex auctor in. Ut elit augue, venenatis a nisl ac, finibus auctor augue. Etiam placerat interdum dolor, ut viverra dolor vulputate a. Donec non vehicula tellus. Nam consequat gravida leo quis auctor. Maecenas iaculis tortor sagittis elit posuere, sit amet congue lacus faucibus. Quisque finibus enim at orci laoreet, in maximus dolor dictum. Aenean in malesuada mauris. \n\n Suspendisse vestibulum odio sapien, vitae bibendum sapien imperdiet sed. Sed sollicitudin, leo consectetur auctor rutrum, nisi nisi condimentum nibh, ac egestas nibh sapien vel mi. Ut ac ullamcorper nulla. Vivamus tincidunt felis at metus varius feugiat. Proin eleifend tortor sed pellentesque mattis. Mauris nec nulla nunc. Nullam lobortis quis ex vitae dignissim. Quisque mauris sapien, eleifend quis eros at, consectetur interdum neque. In hac habitasse platea dictumst. Sed faucibus, orci ullamcorper laoreet viverra, lorem nisi scelerisque elit, id ultricies turpis purus vitae orci. Etiam vitae rutrum quam. Duis cursus nulla est, sed mattis sapien iaculis in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nisl nulla, mollis id aliquam nec, blandit maximus turpis. Aenean aliquet est dolor, non ultrices orci tempus eu. Sed eleifend, risus at euismod congue, est dui varius massa, sit amet vulputate lectus magna quis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque maximus ipsum arcu, non mattis ipsum viverra a. Donec lacinia nulla convallis, dignissim mi sed, congue urna. Donec ut magna vitae felis imperdiet feugiat. Sed sit amet elit non metus fringilla vehicula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse potenti. Integer consequat nisi diam, sit amet tincidunt risus hendrerit sit amet. Morbi placerat ipsum non mauris condimentum tristique. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi accumsan, tortor non aliquam imperdiet, diam ante aliquam lacus, eget gravida nulla leo non mi. Suspendisse potenti. Pellentesque augue est, dignissim a est ut, tincidunt congue leo. Vivamus vel urna porttitor, convallis libero nec, mattis ex. Ut pellentesque laoreet diam, eu dignissim augue euismod vitae.\n \n  Nam sit amet velit imperdiet, cursus ligula et, congue odio. Donec vitae laoreet quam. Ut ullamcorper quam sit amet mi dapibus, eu efficitur erat lobortis. Phasellus ipsum sem, rutrum mollis porttitor non, sagittis a mi. Proin aliquam faucibus tellus, id tincidunt ex. Quisque sed lectus lacinia, convallis lacus quis, fringilla tortor. Vivamus venenatis id eros id luctus. Donec eu ex eget lorem accumsan faucibus. Suspendisse sit amet lectus ut lorem pharetra ornare. Etiam congue enim elit. Nunc consectetur auctor tellus, vel ultrices ligula sodales sed. Praesent eu viverra.',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey)),
                                ),
                              ],
                            )),
                      ),
                    ))
              ],
            ),
          ],
        )
      ]))
    ]));
  }
}
