import 'package:flutter/material.dart';

/* Building Layout公式サンプル*/
class BuildingALayoutTutorial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    /*タイトルセクションのウィジェット*/
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),

      /* 行 */
      child: Row(
        children: [

          /*伸びる領域*/
          Expanded(

            /*列*/
            child: Column(
              /*寄せ方*/
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Container(
                  /*タイトルと、サブテキストの間の隙間ポイント*/
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'タイトルテキストタイトルテキストタイトルテキストタイトルテキストタイトルテキストタイトルテキストタイトルテキストタイトルテキストタイトルテキストタイトルテキスト',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Text(
                  'サブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキストサブテキスト',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),

              ],
            ),
          ),

          Icon(
            Icons.stars,
            color: Colors.red[500],
          ),

          Text('末尾のテキスト'),
        ],
      ),
    ); /* titleSection */


    /*ボタンを含む列を生成する(nested function)*/
    Column buildButtonColumn(IconData icon, String label) {

      Color color = Theme.of(context).primaryColorDark;

      /*列*/
      return Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          /*アイコンを追加*/
          Icon(icon, color: color),

          /*隙間とテキストを含むコンテナを追加*/
          Container(
            /* アイコンとテキストの間のポイント数*/
            margin: const EdgeInsets.only(top: 20.0),

            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,  //Bold的な属性: w100〜w900
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    /*ボタンセクション*/
    Widget buttonSection = Container(
      /*行*/
      child: Row(
        /*均等配置*/
        //mainAxisAlignment: MainAxisAlignment.start, //
        //mainAxisAlignment: MainAxisAlignment.center, //
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //均等配置
        //mainAxisAlignment: MainAxisAlignment.spaceAround, //幅ぴったり
        children: [
          /*3つのボタン列を追加する*/
          buildButtonColumn(Icons.call, '電話電話電話'),
          buildButtonColumn(Icons.near_me, '位置情報位置情報'),
          buildButtonColumn(Icons.share, '共有共有共有'),
        ],
      ),
    );

    /*テキストセクション*/
    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
複数行のテキスト。行1。複数行のテキスト。行1。複数行のテキスト。行1。複数行のテキスト。行1。複数行のテキスト。行1。複数行のテキスト。行1。       
複数行のテキスト。行2。       
複数行のテキスト。行3。       
複数行のテキスト。行4。       
複数行のテキスト。行5。       
        ''',
        softWrap: true,  //領域内で改行するかのフラグ
      ),
    );

    /*画像セクションを生成*/
    Widget imageSection = Container (
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(
        'images/sandwich.jpg',
        width: 600.0,
        height: 240.0,
        fit: BoxFit.cover,
      ),
    );

    /**/
    return new Scaffold(
      appBar: AppBar(
        title: Text('レイアウト構築サンプル'),
      ),
      body: ListView(
        children: [
          /*これまで定義した、複数のセクションウィジェットを追加*/
          imageSection,
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );

  }
}