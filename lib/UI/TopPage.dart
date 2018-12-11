import 'package:flutter/material.dart';

import 'package:FlutterPractice/UI/Menu/RandomWords.dart';
import 'package:FlutterPractice/UI/Menu/SimpleWidgetListPage.dart';
import 'package:FlutterPractice/UI/Menu/CupertinoButtonSample.dart';
import 'package:FlutterPractice/UI/Menu/FlutterLogoFadeInSample.dart';

class TopPage extends StatefulWidget {
  @override
  TopPageState createState() => new TopPageState();
}


class TopPageState extends State<TopPage> {

  final List<ListTile> _menuItemList = <ListTile>[];

  /*サイズ指定フォント*/
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('検証項目一覧'),
      ),
      body: _buildMenuList(),  //リストを生成する
    );
  }

  Widget _buildMenuList() {

    _menuItemList.add(_createlistTile('Random Word Generator', RandomWords()));
    _menuItemList.add(_createlistTile('Simple Widget List Page', SimpleWidgetListPage(title: "Simple Widget")));
    _menuItemList.add(_createlistTile('CupertinoButtonSample', CupertinoButtonSample()));
    final title = 'Flutter Logo FadeIn Sample';
    _menuItemList.add(_createlistTile(title, FlutterLogoFadeInSample(title: title)));

    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: _menuItemList,
    );
  }

  /**
   * 行を生成する
   */
  Widget _createlistTile(String menuItem, Widget object) {

    return ListTile(

      /* 行のタイトル文字 */
      title: Text(
        menuItem,
        style: _biggerFont,
      ),

      /*行が選択された際のハンドラーメソッドを追加*/
      onTap: () {
        Navigator.of(context).push(

          /* MaterialPageRouteウィジェットビルダーを生成する */
          new MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return object;
            }
          ),
        );
      },

    );
  }


}