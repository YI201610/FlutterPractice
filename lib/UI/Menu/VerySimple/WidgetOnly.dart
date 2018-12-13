import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
 * Materialコンポーネントではない単純なウィジェット。
 *
 * AppBar,
 * 背景色,
 * タイトル
 *
 * を持たない。
 *
 * */
class WidgetOnly extends StatelessWidget {

  /*build()メソッドを用いてウィジェットを追加する*/
  @override
  Widget build(BuildContext context) {

    return Container(

      /*背景色を設定*/
      decoration: BoxDecoration(color: Colors.lightGreenAccent),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('こんにちは',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20.0, color: Colors.black87)
            ),

            /*クパチーノボタン*/
            CupertinoButton(
              color: Colors.blue,
              onPressed: () {
                /*ナビゲーションウィジェットからpopする*/
                Navigator.of(context).pop();
              },
              child: Text('閉じる',
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}