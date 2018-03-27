import 'dart:io';
import 'dart:convert';
import 'dart:async';

class HTTPService {

  static Future<Map> getJSONContent(Uri uri) async {
      var httpClient = new HttpClient();
      var request = await httpClient.getUrl(uri);
      var response = await request.close();
      var responseBody = await response.transform(utf8.decoder).join();
      Map json = jsonDecode(responseBody);
      return json;
  }


}

