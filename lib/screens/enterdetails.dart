import 'package:flutter/material.dart';
import 'package:newsapp/screens/bnavbar.dart';

class Enterdetails extends StatefulWidget {
  static const sid = 'Enterdetails';
  State<StatefulWidget> createState() {
    return _EnterdetailsState();
  }
}

class _EnterdetailsState extends State<Enterdetails> {
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Carousel with indicator controller demo')),
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
      ),
      SliverList(
          delegate: SliverChildListDelegate(
        [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 150, 0, 0),
                    child: Image.asset('graphic_res/logo1.png',
                        height: 150, width: 150, fit: BoxFit.cover),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 80, 200, 10),
                  child: Text(
                    'Enter Your Name:',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff676d87),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 10),
                  child: TextButton(
                      child: Text("       Next       ".toUpperCase(),
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
        ],
      ))
    ]));
  }
}
