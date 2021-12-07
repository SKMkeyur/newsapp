import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/welcomescreen.dart';

final List<String> imgList = [
  'https://images.performgroup.com/di/library/omnisport/73/b2/phil-foden_1qtnq7lqtaayd16pr7dkpgjbud.jpg?t=-118973492',
  'https://image.api.uk1.sportal365.com/process/smp-image-api/livescore.com/25112021/1637841480598.jpg',
  'https://image.api.uk1.sportal365.com/process/smp-image-api/livescore.com/25112021/1637841182504.jpg',
  'https://images.performgroup.com/di/library/omnisport/d0/28/slavisa-jokanovic-cropped_tg0f59akw8nz17xhzauph8hdz.jpg?t=461290903',
  'https://image.api.uk1.sportal365.com/process/smp-image-api/livescore.com/24112021/1637741533772.png'
];

class Onboarding extends StatefulWidget {
  @override
  static const sid = 'onboarding';
  State<StatefulWidget> createState() {
    return _OnboardingState();
  }
}

class _OnboardingState extends State<Onboarding> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item,
                          fit: BoxFit.cover, width: 1000.0, height: 5000),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          // child: Text(
                          //   'No. ${imgList.indexOf(item)} image',
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20.0,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(children: [
        Expanded(
            flex: 6,
            child: Wrap(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: CarouselSlider(
                    items: imageSliders,
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  )),
            ])),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              )),
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text("First To Know",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            )),
        Expanded(
            flex: 1,
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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: TextButton(
                  child: Text(
                      "                                        Next                                        "
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
                  onPressed: () => Navigator.pushNamed(context, Welcomescreen.sid))),
        )
      ]),
    );
  }
}
