import 'dart:convert';

import 'package:untitled5/core/error/exception.dart';

import 'package:http/http.dart' as http;
import 'package:untitled5/data/models/currency.dart';

abstract class CurrencyRemoteDataSource {
  Future<CurrencyRatesModel> getCurrency(String source, String currencies);
}

class CurrencyRemoteDataSourceImpl implements CurrencyRemoteDataSource {
  final http.Client client;

  CurrencyRemoteDataSourceImpl({required this.client});
  @override
  Future<CurrencyRatesModel> getCurrency(String source, String currencies) async {
    //var url = "";
    try {
      //var response = await client.get(Uri.parse(url),
      //     headers: {"apikey": "Fco5X1ok1YOWfwD9U6FOLlbO3pCi1ru7"});
      var json = jsonDecode(jsonString);
      var result = CurrencyRatesModel.fromJson(json);
      return result;
    } catch (e) {
      throw ServerException();
    }
  }
}

String jsonString = '''
    {
    "firstName": "Ivan",
    "secondName": "Galushin",
    "birth_date" : "2003-12-21",
    "email":"gorgeouswintered@gmail.com",
    "password":"IvanGinkinLoh",
    "is_admin":true,
    "created_date":"2022-11-19",
    "briefcase": [
      {
        "id":1,
        "amount":155.0,
        "briefcase_id":1,
        "currency":"EUR"
      },
      {
        "id":1,
        "amount":155.0,
        "briefcase_id":1,
        "currency":"EUR"
      },
      {
        "id":1,
        "amount":155.0,
        "briefcase_id":1,
        "currency":"USD"
      }
    ]
    }
    ''';
