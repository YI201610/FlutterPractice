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

        /**/
        itemBuilder: (context, i) {

          /*奇数行には、高さ1ピクセルの罫線ウィジェットを返す*/
          if (i.isOdd) return Divider();

          final index = i ~/ 2; //0,1,2,3,4,5,6,7...

          /*行のindexが、メモリ内のsuggestions属性のサイズを超える場合、
            10個のランダム文字列を追加.

            generateWordPairs() ... english_wordsパッケージのサービス
            */
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
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),

      /*行が選択された際のハンドラーメソッドを追加*/
      onTap: () {

        /*setState()メソッドを実行すると、build()メソッドが発動する*/
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },

    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),

        actions: <Widget>[
          /* AppBarにリストアイコンを追加 */
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushFavoriteListWidget),
        ],

      ),
      body: _buildSuggestions(),  //リストを生成する
    );
  }

  /*画面に、新しいrouteをpushする*/
  void _pushFavoriteListWidget() {

    Navigator.of(context).push(

      /* MaterialPageRouteウィジェットビルダーを生成する */
      new MaterialPageRoute<void>(   // Add 20 lines from here...
        builder: (BuildContext context) {

          final Iterable<ListTile> tiles = _saved.map(
                (WordPair pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
                onTap: () {

                },
              );
            },
          );

          /* 1ピクセルの罫線が追加されたリストを生成する。*/
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();   //toList() ... 要素をリストに変換する便利メソッド


          /**/
          return new Scaffold(         // Add 6 lines from here...
            appBar: new AppBar(
              title: const Text('お気に入り一覧'),
            ),
            body: new ListView(children: divided),
          );                           // ... to here.

        },
      ),                           // ... to here.
    );
  }

}