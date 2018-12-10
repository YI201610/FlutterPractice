import 'package:flutter/material.dart';

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

    _menuItemList.add(_buildRow('sample UI1'));
    _menuItemList.add(_buildRow('sample UI2'));
    _menuItemList.add(_buildRow('sample UI3'));
    _menuItemList.add(_buildRow('sample UI4'));
    _menuItemList.add(_buildRow('sample UI5'));
    _menuItemList.add(_buildRow('sample UI6'));
    _menuItemList.add(_buildRow('sample UI7'));
    _menuItemList.add(_buildRow('sample UI8'));
    _menuItemList.add(_buildRow('sample UI9'));
    _menuItemList.add(_buildRow('sample UI10'));
    _menuItemList.add(_buildRow('sample UI11'));
    _menuItemList.add(_buildRow('sample UI12'));
    _menuItemList.add(_buildRow('sample UI13'));
    _menuItemList.add(_buildRow('sample UI14'));
    _menuItemList.add(_buildRow('sample UI15'));

    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: _menuItemList,
    );
  }

  /**
   * 行を生成する
   */
  Widget _buildRow(String menuItem) {

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
              return Scaffold(
                appBar: AppBar(
                  title: Text(menuItem),
                ),

                body: Center(

                  /* 内部の要素を返すプライベートメソッドを指定 */
                  child: Text("詳細"),
                ),
              );
            }
          ),
        );
      },

    );
  }


}