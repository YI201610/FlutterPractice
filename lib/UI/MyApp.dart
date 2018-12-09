import 'package:flutter/material.dart';
import 'package:FlutterPractice/Domain/iTunes.dart';


import 'package:FlutterPractice/UI/SimpleWidgetListPage.dart';
import 'package:FlutterPractice/UI/RandomWords.dart';
import 'package:FlutterPractice/UI/Sample1Page.dart';
import 'package:FlutterPractice/UI/Sample2Page.dart';
import 'package:FlutterPractice/UI/Sample3Page.dart';
import 'package:FlutterPractice/UI/RandomWords.dart';

/*  */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    iTunes.test();

    /*マテリアル・デザインベースのアプリを生成する*/
    return new MaterialApp(
      title: 'Flutter Practice',

      /*テーマを生成する*/
      theme: new ThemeData(
        //primarySwatch: Colors.blueGrey,
        primaryColor: Colors.white,
      ),

      //home: new SimpleWidgetListPage(title: 'Flutter Practice'),
      home: new RandomWords(),
      //home: new Sample1Page(),
      //home: new Sample2Page(title: 'hoge'),
      //home: new Sample3Page(),

    );
  }
}

