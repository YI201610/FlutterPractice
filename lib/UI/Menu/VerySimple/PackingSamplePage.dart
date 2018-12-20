import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class PackingSamplePage extends StatefulWidget {
  PackingSamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PackingSamplePageState createState() => _PackingSamplePageState();
}

class _PackingSamplePageState extends State<PackingSamplePage> {

  @override
  Widget build(BuildContext context) {

    debugPaintSizeEnabled = true;

    var packedRow = Row(
      //mainAxisSize: MainAxisSize.max,
      mainAxisSize: MainAxisSize.min, //minを指定することで子要素を最小限の領域に配置する
      children: [
        Icon(Icons.star, color: Colors.green[700]),
        Icon(Icons.star, color: Colors.green[700]),
        Icon(Icons.star, color: Colors.green[700]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: packedRow,
      ),

    );
  }
}