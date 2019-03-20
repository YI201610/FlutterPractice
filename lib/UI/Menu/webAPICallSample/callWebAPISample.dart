import 'package:flutter/material.dart';
import 'package:FlutterPractice/Domain/iTunes.dart';

class callWebAPISample extends StatefulWidget {
  final String title;

  /* Constructor */
  callWebAPISample({Key key, this.title}) : super(key: key);

  @override
  callWebAPISampleState createState() => new callWebAPISampleState();
}

class callWebAPISampleState extends State<callWebAPISample> {

  @override
  Widget build(BuildContext context) {

    /*通信を実行*/
    iTunes.test();

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(

        child: new Column(

          /* 水平方向の整列属性を指定 */
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Text(
              '通信中...',
              style: Theme.of(context).textTheme.display1,
            ),

          ],
        ),

      ),

    );
  }
}
