import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:melody0/screens/wrapper.dart';
import 'package:melody0/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:melody0/models/user.dart';
import 'package:melody0/screens/learn/learn.dart';
import 'package:melody0/screens/home/home.dart';
import 'package:melody0/screens/news/news.dart';
import 'package:melody0/screens/home/Settings.dart';
import 'package:melody0/screens/home/languages.dart';
import 'package:melody0/screens/learn/video1.dart';
import 'package:melody0/screens/learn/video2.dart';
import 'package:melody0/screens/learn/video3.dart';
import 'package:melody0/screens/learn/video4.dart';
import 'package:melody0/screens/learn/video5.dart';
import 'dart:ui' as ui;



void main() {

  RenderErrorBox.backgroundColor = Colors.transparent;
  RenderErrorBox.textStyle = ui.TextStyle(color: Colors.transparent);
  return runApp(MyApp());
}


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        routes: {
          '/home':(context) => Home(),
          '/learn':(context) => Learn(),
          '/news':(context) => News(),
          '/settings':(context) => Settings(),
          '/languages':(context) => Languages(),
          '/video1':(context) => Video1(),
          '/video2':(context) => Video2(),
          '/video3':(context) => Video3(),
          '/video4':(context) => Video4(),
          '/video5':(context) => Video5(),



        },
        home: Wrapper(),
        ),

    );
  }
}

