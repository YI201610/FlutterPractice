import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  //RandomWordsState createState() => new RandomWordsState();
  RandomWordsState2 createState() => new RandomWordsState2();
}

/**
 * ２語のランダムワードを1つ返す状態
 */
class RandomWordsState extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

/**
 * ランダムワードのリストを表示する状態
 */
class RandomWordsState2 extends State<RandomWords> {

  /*ランダム文字のリスト*/
  final List<WordPair> _suggestions = <WordPair>[];

  /*サイズ指定フォント*/
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  /*ユーザーがお気に入りした項目のリスト*/
  final Set<WordPair> _saved = new Set<WordPair>();


  /*ランダムワードのリストを生成して返す*/
  Widget _buildSuggestions() {

    /*リストを生成して返す. ListView.builderというコンポーネントを使用*/
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          // Add a one-pixel-high divider widget before each row in theListView.
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          /*行オブジェクトを生成*/
          return _buildRow(_suggestions[index]);
        });
  }

  /**
   * 行を生成する
   */
  Widget _buildRow(WordPair pair) {

    /* ユーザーがお気に入り登録しているかフラグ */
    final bool alreadySaved = _saved.contains(pair);

    return ListTile(

      /* 行のタイトル文字 */
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),

      /*行の末尾に配置するオブジェクト: アイコンを生成 */
      trailing: new Icon(   // Add the lines from here...
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),                    // ... to here.

    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),  //リストを生成する
    );
  }
}