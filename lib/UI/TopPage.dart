import 'package:flutter/material.dart';

import 'package:FlutterPractice/UI/Menu/VerySimple/RandomWords.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/SimpleWidgetListPage.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/CupertinoButtonSample.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/FlutterLogoFadeInSample.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/ImageSample1.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/httpNetworkingSample.dart';
import 'package:FlutterPractice/UI/Menu/Building-a-layout-Tutorial/BuildingALayoutTutorial.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/WidgetOnly.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/SpaceEvenlyImagesRowPage.dart';
import 'package:FlutterPractice/UI/Menu/VerySimple/SpaceEvenlyImagesColumnPage.dart';

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

    var title = '';

    /*追加する検証項目は、AppBarを持つMaterialウィジェットである必要がある。でないとpopできない。*/
    _menuItemList.add(_createlistTile('Random Word Generator', RandomWords()));
    _menuItemList.add(_createlistTile('Simple Widget List Page', SimpleWidgetListPage(title: "Simple Widget")));
    _menuItemList.add(_createlistTile('CupertinoButtonSample', CupertinoButtonSample()));

    title = 'Flutter Logo FadeIn Sample';
    _menuItemList.add(_createlistTile(title, FlutterLogoFadeInSample(title: title)));

    _menuItemList.add(_createlistTile('Image Sample 1', ImageSample1(title: 'Image Sample1',)));
    _menuItemList.add(_createlistTile('HTTP通信Sample 1', httpNetworkingSample(title: 'HTTP通信 Sample1')));
    _menuItemList.add(_createlistTile('Building A Layout Tutorial', BuildingALayoutTutorial()));
    _menuItemList.add(_createlistTile('non-Materialウィジェット', WidgetOnly()));

    title = '水平方向配置:SpaceEvenlyで画像表示';
    _menuItemList.add(_createlistTile(title, SpaceEvenlyImagesRowPage(title: title)));

    title = '垂直方向配置:SpaceEvenlyで画像表示';
    _menuItemList.add(_createlistTile(title, SpaceEvenlyImagesColumnPage(title: title)));

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