import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FirstSamplePage extends StatefulWidget {
  final String title;

  /* Constructor */
  FirstSamplePage({Key key, this.title}) : super(key: key);

  @override
  _FirstSamplePageDefaultState createState() => new _FirstSamplePageDefaultState();
}

/**
 * 最初の状態
 */
class _FirstSamplePageDefaultState extends State<FirstSamplePage> {

  int _counter = 0;
  final wordPair = WordPair.random();

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
              wordPair.asPascalCase,
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
