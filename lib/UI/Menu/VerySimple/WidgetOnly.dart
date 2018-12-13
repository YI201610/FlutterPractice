import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*Materialコンポーネントではない単純なウィジェット*/
class WidgetOnly extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(color: Colors.greenAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('こんにちは',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20.0, color: Colors.black87)
            ),
            CupertinoButton(
              color: Colors.blue,
              onPressed: () {
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