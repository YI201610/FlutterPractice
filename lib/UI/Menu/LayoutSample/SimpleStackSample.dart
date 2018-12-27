import 'package:flutter/material.dart';

class SimpleStackSamplePage extends StatefulWidget {
  SimpleStackSamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SimpleStackSamplePageState createState() => _SimpleStackSamplePageState();
}

class _SimpleStackSamplePageState extends State<SimpleStackSamplePage> {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/autumn-tree1.jpg'),
          radius: 180.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            //color: Colors.lightGreenAccent,
          ),
          child: Text(
            'スタックサンプルスタックサンプル',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}