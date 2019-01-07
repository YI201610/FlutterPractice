import 'package:flutter/material.dart';

/* お気に入りウィジェット */
class FavoriteStatefulWidget extends StatefulWidget {
  @override
  _FavoriteStatefulWidgetState createState() => _FavoriteStatefulWidgetState();
}

class _FavoriteStatefulWidgetState extends State<FavoriteStatefulWidget> {

  /*お気に入りされているか*/
  bool _favoriteFlag = true;

  /*お気に入り数*/
  int _favoriteCount = 41;

  /*お気に入り切り替え*/
  void _toggleFavorite() {
    setState(() {
      if (_favoriteFlag) {
        _favoriteCount -= 1;
        _favoriteFlag = false;
      } else {
        _favoriteCount += 1;
        _favoriteFlag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0.0),

          child: IconButton(
            icon: (_favoriteFlag ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],

            /*選択されたらプライベートメソッドを実行する*/
            onPressed: _toggleFavorite,
          ),

        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}