import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'UI/MyApp.dart';

//void main() => runApp(new MyApp());

void main() {

  /*画面描画時にデバッグ図形を表示したい場合は、次の行を有効にする*/
  //debugPaintSizeEnabled = true;

  runApp(MyApp());
}

