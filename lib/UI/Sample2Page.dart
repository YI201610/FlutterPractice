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
  AnimationController animationController;

  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();

   /*アニメーションコントローラの生成。 指定したmillisecondでアニメーションを実行するように設定。*/
   animationController = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);

   /* Animation<double>クラスであるCurvedAnimationを生成 */
   curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.easeIn);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(

              /* SingleChildRenderObjectWidgetオブジェクトである、
               * FadeTransitionオブジェクトを生成して設定 */
              child: FadeTransition(
                  opacity: curvedAnimation,

                  child: FlutterLogo(  /* Flutterロゴオブジェクトをアサイン*/
                    size: 100.0,
                  )

              )

          )
      ),

      /*フローティング・アクションを生成*/
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',  /*ボタン長押し時のメッセージ*/
        child: Icon(Icons.brush), /*Icons.brush: 筆マークのシステムアイコン*/
        onPressed: () {

          /*アニメーションコントローラーにアニメーション開始を依頼*/
          animationController.forward(); /**/
        },
      ),
    );
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }
}