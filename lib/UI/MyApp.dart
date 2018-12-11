import 'package:flutter/material.dart';
import 'package:FlutterPractice/UI/TopPage.dart';

/*  */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    /*マテリアル・デザインベースのアプリを生成する*/
    return new MaterialApp(
      title: 'Flutter Practice',

      /*テーマを生成する*/
      theme: new ThemeData(
        //primarySwatch: Colors.blueGrey,
        primaryColor: Colors.white,
      ),

      home: new TopPage(),

    );
  }
}

