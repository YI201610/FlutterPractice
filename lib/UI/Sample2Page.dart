import 'package:flutter/material.dart';

///アニメーション機能を検証するウィジェット
class Sample2Page extends StatefulWidget {
  Sample2Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Sample2PageFirstState createState() => _Sample2PageFirstState();
}

///最初の状態クラス
class _Sample2PageFirstState extends State<Sample2Page> with TickerProviderStateMixin {

  /* AnimationController: アニメーションを行うためのクラス.
    pause, seek, stop, reverseが可能。

    Tickerを必要とする。
    */
  AnimationController controller;

  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();

   /*アニメーションコントローラの生成*/
   controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);

   /**/
   curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
              child: FadeTransition(
                  opacity: curve,

                  child: FlutterLogo(  /* Flutterロゴオブジェクトをアサイン*/
                    size: 100.0,
                  )

              )
          )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',  /*ボタン長押し時のメッセージ*/
        child: Icon(Icons.brush), /*Icons.brush: 筆マークのシステムアイコン*/
        onPressed: () {
          controller.forward(); /**/
        },
      ),
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }
}