import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:FlutterPractice/UI/RandomWords.dart';

/**
 * Statefulウィジェットは、少なくとも2つのクラスを必要とする。
 * 1. StatefulWidgetクラスのインスタンスを生成するためのクラス
 * 2. 上記に紐付くStateクラス
 */

class SimpleWidgetListPage extends StatefulWidget {
  final String title;

  /* Constructor */
  SimpleWidgetListPage({Key key, this.title}) : super(key: key);

  @override
  SimpleWidgetListPageDefaultState createState() => new SimpleWidgetListPageDefaultState();
}

/**
 * 最初の状態
 */
class SimpleWidgetListPageDefaultState extends State<SimpleWidgetListPage> {

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

            RandomWords(),

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
