import 'dart:convert';

import 'package:untitled5/core/error/exception.dart';

import 'package:http/http.dart' as http;
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/data/models/token.dart';
import 'package:untitled5/data/models/user.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser(String token);
  Future<TokenModel> auth(String email, String password);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final http.Client client;

  UserRemoteDataSourceImpl({required this.client});
  @override
  Future<UserModel> getUser(String token) async {
    //var url = "";
    try {
      //var response = await client.get(Uri.parse(url),
      //     headers: {"apikey": "Fco5X1ok1YOWfwD9U6FOLlbO3pCi1ru7"});
      var json = jsonDecode(jsonString);
      var result = UserModel.fromJson(json);
      return result;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<TokenModel> auth(String email, String password) async {
    //var url = '';
    try {
    //   var response = await client.post(Uri.parse(url), body: {
    //     'email': email,
    //     'password': password,
    //   });
    //   return TokenModel(token: response.body);
    return const TokenModel(token: 'token');
    } catch (e) {
      throw AuthFailure();
    }
  }
}

String jsonString = '''
    {
    "id":1,
    "first_name": "Ivan",
    "second_name": "Galushin",
    "birth_date" : "2003-12-21",
    "email":"gorgeouswintered@gmail.com",
    "password":"IvanGinkinLoh",
    "is_admin": "true",
    "created_date" : "2003-12-21",
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
