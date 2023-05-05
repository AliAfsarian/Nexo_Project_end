import 'package:http/http.dart' as http;
import 'dart:convert';

String api = "http://api.nexobuilding.com/test";

class Networking {
  static List<dynamic> maindata;
  Future<void> getdata() async {
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      String data = response.body;
      Map<String, dynamic> decodedata = json.decode(response.body);
      maindata = decodedata["Users"];
    } else {
      print(response.statusCode);
    }
  }
}
