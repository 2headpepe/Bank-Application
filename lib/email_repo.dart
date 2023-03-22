import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class EmailRepo {
  static Future<void> getInfo({required String email}) async {
    var url = 'https://api.apilayer.com/disposable_email/$email';
    try {
      var response =
          await http.get(Uri.parse(url), headers: {"apikey": "Fco5X1ok1YOWfwD9U6FOLlbO3pCi1ru7"});
      //var json = jsonDecode(jsonString);
      //var result = User.fromJson(json);
      if (kDebugMode) {
        print(response.body);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
