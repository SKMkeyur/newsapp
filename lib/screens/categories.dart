import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  static const sid = 'Categories';
  State<StatefulWidget> createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Carousel with indicator controller demo')),
        body: CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
                child: Text("Categories",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 50),
              child: Text("Thousands of articles in each category",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey)),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: SingleChildScrollView(
                  child: Row(children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          GestureDetector(
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Home()),
                              //   );
                              // },
                              child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 15, 15),
                                  child: Container(
                                      height: 75,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff3f4f6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                              'graphic_res/soccer.png'),
                                        ),
                                      )))),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child:
                                          Image.asset('graphic_res/vball.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child:
                                          Image.asset('graphic_res/tennis.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/hockey-sticks.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/golf-field.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/cricket.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/bowling.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/basketball.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/baseball-bat.png'),
                                    ),
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
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'graphic_res/badminton.png'),
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  ]),
                )),
          ]),
        )
      ],
    ));
  }
}
