import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/**/
class CupertinoButtonSample extends StatefulWidget {
  CupertinoButtonSample({Key key}) : super(key: key);

  @override
  _CupertinoButtonSampleState createState() => _CupertinoButtonSampleState();
}

/**/
class _CupertinoButtonSampleState extends State<CupertinoButtonSample> {
  // Default value for toggle
  bool toggle = true;
  void _didSelectToggleButton() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {

    if (toggle) {

      return Text(
        'Simple Text',
        style: Theme.of(context).textTheme.display1,
      );

    } else {

      return CupertinoButton(
        onPressed: () {},
        child: Text(
          'This is CupertinoButton',
          //style: Theme.of(context).textTheme.subtitle,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),

      body: Center(

        /* 内部の要素を返すプライベートメソッドを指定 */
        child: _getToggleChild(),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _didSelectToggleButton,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
