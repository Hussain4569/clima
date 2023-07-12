import 'dart:convert';
import "package:http/http.dart" as http;

class NetworkHelper {
  final String uri;
  NetworkHelper(this.uri);

  Future getData() async {
    var url = Uri.parse(uri);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else
      print(response.statusCode);
  }
}
