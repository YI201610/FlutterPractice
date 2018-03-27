import 'package:FlutterTips/TechnicalService/HTTPService.dart';
import 'dart:async';

class iTunes {

  //https://rss.itunes.apple.com/api/v1/us/ios-apps/new-apps-we-love/all/10/explicit.json

  static void test() {

    var uri = new Uri.https(
        'rss.itunes.apple.com',
        '/api/v1/us/ios-apps/new-apps-we-love/all/10/explicit.json',
        null);
    final future = HTTPService.getJSONContent(uri);
    future.then((json) {
      print("*** json: ${json}");
    });

  }
}