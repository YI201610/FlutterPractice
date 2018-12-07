import 'package:flutter/material.dart';
import 'package:FlutterTips/Domain/iTunes.dart';

import 'package:FlutterTips/UI/MyHomePage.dart';
import 'package:FlutterTips/UI/Sample1Page.dart';

/*  */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    iTunes.test();

    return new MaterialApp(
      title: 'Flutter Practice',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),

      //home: new MyHomePage(title: 'Flutter Practice'),
      home: new Sample1Page(),

    );
  }
}

