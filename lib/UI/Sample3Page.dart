import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:FlutterPractice/TechnicalService/HTTPService.dart';
//
//
///* TODO: サンプルで提示される次のパッケージが無効なので対処を検討中 */
//import 'package:http/http.dart' as http;
//
//
///**
// * 非同期通信サンプル
// */
//class Sample3Page extends StatefulWidget {
//  Sample3Page({Key key}) : super(key: key);
//
//  @override
//  _Sample3PageState createState() => _Sample3PageState();
//}
//
///**
// * 最初の状態
// */
//class _Sample3PageState extends State<Sample3Page> {
//  List widgets = [];
//
//  @override
//  void initState() {
//    super.initState();
//
//    loadData();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text("Sample App"),
//        ),
//        body: ListView.builder(
//            itemCount: widgets.length,
//            itemBuilder: (BuildContext context, int position) {
//              return getRow(position);
//            }));
//  }
//
//  Widget getRow(int i) {
//    return Padding(
//        padding: EdgeInsets.all(10.0),
//        child: Text("Row ${widgets[i]["title"]}")
//    );
//  }
//
//  loadData() async {
//
//    /*TODO: 次のコードが不安*/
//    String dataURL = "https://jsonplaceholder.typicode.com/posts";
//    http.Response response = await http.get(dataURL);
//    setState(() {
//      widgets = json.decode(response.body);
//    });
//
////    var uri = new Uri.https(
////        'rss.itunes.apple.com',
////        '/api/v1/us/ios-apps/new-apps-we-love/all/10/explicit.json',
////        null);
////
////    final future = HTTPService.getJSONContent(uri);
////    future.then((json) {
////      print("*** json: ${json}");
////
//////      setState(() {
//////        widgets = json.values;
//////      });
////
////    });
//
//  }
//}