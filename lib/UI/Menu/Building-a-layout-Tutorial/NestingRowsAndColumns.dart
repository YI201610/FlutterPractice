import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

/**
 * 行と列をネストするレイアウトのサンプル
 * 参考URL: https://flutter.io/docs/development/ui/layout#nesting-rows-and-columns
 */
class NestingRowsAndColumns extends StatefulWidget {
  NestingRowsAndColumns({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NestingRowsAndColumnsState createState() => _NestingRowsAndColumnsState();
}

/**
 *
 */
class _NestingRowsAndColumnsState extends State<NestingRowsAndColumns> {

  @override

  Widget build(BuildContext context) {

    debugPaintSizeEnabled = true;

    /*レイアウトをContainerとして実装*/
    var titleTextContainer = Container(
      padding: EdgeInsets.all(20.0),

      child: Text(
        'サンプルタイトル',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30.0,
        ),
      ),
    );

    /*Widgetを変数に格納*/
    var subTitle = Text(
      '''
サンプルテキスト
''',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25.0,
      ),
    );

    /*レイアウトをContainerとして実装*/
    var ratingsContainer = Container(

      padding: EdgeInsets.all(20.0),

      /*行ウィジェットを定義*/
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*最小限の領域にPackingした行ウィジェット*/
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
            ],
          ),
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );

    var descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    // DefaultTextStyle.merge allows you to create a default text
    // style that is inherited by its child and all subsequent children.
    var iconListWidget = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEEDS:'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    /*レイアウト群をContainerとして実装*/
    var leftColumnContainer = Container(
      padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
      child: Column(
        children: [
          titleTextContainer,
          subTitle,
          ratingsContainer,
          iconListWidget,
        ],
      ),
    );

    var mainImage = Image.asset(
      'images/thumbnail/sandwich-100.jpg',
      //'images/sandwich.jpg',
      fit: BoxFit.cover,
    );

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Container(
          /*Left, Top, Right, Bottomのマージンを１行で指定か。*/
          margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
          height: 600.0,

          child: Card(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /* 多重にネストされたレイアウト・ウィジェットでContainerを生成 */
                Container(
                  child: leftColumnContainer,
                ),

                /*イメージ・ウィジェット*/
                mainImage,

              ],
            ),
          ),
        ),
      ),
    );
  }
}