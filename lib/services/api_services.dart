import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../const/base_url.dart';

class ApiServices {
  static Future<String?> getHomeData() async {
    http.Request request =
        http.Request('POST', Uri.parse('$baseUrl/home-posts-test'));

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
