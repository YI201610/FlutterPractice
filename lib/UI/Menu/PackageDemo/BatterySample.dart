import 'dart:async';

import 'package:flutter/material.dart';
import 'package:battery/battery.dart';

class BatterySamplePage extends StatefulWidget {
  BatterySamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BatterySamplePageState createState() => new _BatterySamplePageState();
}

class _BatterySamplePageState extends State<BatterySamplePage> {

  /*バッテリーオブジェクトを作成*/
  Battery _battery = new Battery();

  /*バッテリー状態*/
  BatteryState _batteryState;

  /*
   * The subscription provides events to the listener,
   * and holds the callbacks used to handle the events.
   */
  StreamSubscription<BatteryState> _batteryStateSubscription;

  @override
  void initState() {

    super.initState();

    /*「サブスクリプション」で、バッテリー関連の情報を監視する。*/
    _batteryStateSubscription = _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: const Text('batteryプラグインサンプル'),
      ),

      /*画面中央に、バッテリー状態を表示する*/
      body: new Center(
        child: new Text('$_batteryState'),
      ),

      /*フローティングボタン*/
      floatingActionButton: new FloatingActionButton(

        child: const Icon(Icons.battery_unknown),

        onPressed: () async {

          /*現在のバッテリー残量を取得する*/
          final int batteryLevel = await _battery.batteryLevel;

          /*アラートを表示。バッテリー残量を表示。 */
          showDialog<Null>(
            context: context,
            builder: (_) => new AlertDialog(
              content: new Text('Battery: $batteryLevel%'),
              actions: <Widget>[
                new FlatButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );

        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_batteryStateSubscription != null) {
      _batteryStateSubscription.cancel();
    }
  }
}