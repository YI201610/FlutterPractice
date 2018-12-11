import 'package:flutter/material.dart';
import 'package:FlutterPractice/Domain/iTunes.dart';

class httpNetworkingSample extends StatefulWidget {
  final String title;

  /* Constructor */
  httpNetworkingSample({Key key, this.title}) : super(key: key);

  @override
  httpNetworkingSampleState createState() => new httpNetworkingSampleState();
}

class httpNetworkingSampleState extends State<httpNetworkingSample> {

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
