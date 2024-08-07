import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<String?> getHomeData() async {
    http.Request request = http.Request(
        'POST', Uri.parse('http://95.216.221.251/dev/api/home-posts-test'));

    http.StreamedResponse response = await request.send();
    String? data = await response.stream.bytesToString();
    if (response.statusCode == 200) {
      return data;
    } else if (kDebugMode) {
      print(data);
    }
    return null;
  }
}
