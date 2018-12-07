import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  /* Constructor */
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageFirstState createState() => new _MyHomePageFirstState();
}

/**
 * 最初の状態
 */
class _MyHomePageFirstState extends State<MyHomePage> {
  int _counter = 0;

  void _updateCounterText() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(
              'ここに文言を設定してください',
              style: Theme.of(context).textTheme.display1,
            ),
            new Text(
              '選択回数: $_counter',
              style: Theme.of(context).textTheme.display2,
            ),
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: _updateCounterText,
        tooltip: '長押しした際に表示するメッセージ',
        child: new Icon(Icons.add),
      ),

    );
  }
}
