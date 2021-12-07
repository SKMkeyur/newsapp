import 'package:flutter/material.dart';
import 'package:newsapp/screens/article.dart';
import 'package:newsapp/screens/bnavbar.dart';
import 'package:newsapp/screens/bookmark.dart';
import 'package:newsapp/screens/categories.dart';
import 'package:newsapp/screens/enterdetails.dart';
import 'package:newsapp/screens/favtopic.dart';
import 'package:newsapp/screens/home.dart';
import 'package:newsapp/screens/language.dart';
import 'package:newsapp/screens/nullbookmark.dart';
import 'package:newsapp/screens/onboarding.dart';
import 'package:newsapp/screens/profile.dart';
import 'package:newsapp/screens/splashscreen.dart';
import 'package:newsapp/screens/terms.dart';
import 'package:newsapp/screens/welcomescreen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFFFDFFFC),
        scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      ),
      // initialRoute: '/',
      // routes: {
      // // When navigating to the "/" route, build the FirstScreen widget.
      // '/': (context) => splashscreen(),
      // // When navigating to the "/second" route, build the SecondScreen widget.
      // '/second': (context) => Onboarding(),

      initialRoute: Splashscreen.sid,
      routes: {
        Onboarding.sid: (context) => Onboarding(),
        Splashscreen.sid: (context) => Splashscreen(),
        Welcomescreen.sid: (context) => Welcomescreen(),
        Bnavbar.sid: (context) => Bnavbar(),
        Profile.sid: (context) => Profile(),
        Terms.sid: (context) => Terms(),
        Favtopic.sid: (context) => Favtopic(),
        Categories.sid: (context) => Categories(),
        Language.sid: (context) => Language(),
        Nullbookmark.sid: (context) => Nullbookmark(),
        Home.sid: (context) => Home(),
        Bookmark.sid: (context) => Bookmark(),
        Article.sid: (context) => Article(),
        Enterdetails.sid: (context) => Enterdetails(),
      },
    );
  }
}
