import 'package:flutter/material.dart';

class ExpandedImageSamplePage extends StatefulWidget {
  ExpandedImageSamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExpandedImageSamplePageState createState() => _ExpandedImageSamplePageState();
}

class _ExpandedImageSamplePageState extends State<ExpandedImageSamplePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        /*Expandedウィジェットを利用することで、主軸に対して拡大表示することができる*/
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('images/sandwich.jpg'),
            ),
            Expanded(
              flex: 3,  //伸び率的な値
              child: Image.asset('images/autumn-table1.jpg'),
            ),
            Expanded(
              flex: 2,  //伸び率的な値
              child: Image.asset('images/autumn-tree1.jpg'),
            ),
          ],
        ),
      ),

    );
  }
}