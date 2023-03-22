import 'dart:convert';

import 'package:untitled5/core/error/exception.dart';

import 'package:http/http.dart' as http;
import 'package:untitled5/data/models/transaction_history.dart';

abstract class TransactionsRemoteDataSource {
  Future<TransactionsHistoryModel> getTransactions();
}

class TransactionsRemoteDataSourceImpl implements TransactionsRemoteDataSource {
  final http.Client client;

  TransactionsRemoteDataSourceImpl({required this.client});
  @override
  Future<TransactionsHistoryModel> getTransactions() async {
    //var url = "";
    try {
      //var response = await client.get(Uri.parse(url),
      //     headers: {"apikey": "Fco5X1ok1YOWfwD9U6FOLlbO3pCi1ru7"});
      var json = jsonDecode(jsonString);
      var result = TransactionsHistoryModel.fromJson(json);
      return result;
    } catch (e) {
      throw ServerException();
    }
  }
}

String jsonString = '''
{
  "transaction_history": [
    {
      "id":1,
      "user_id":1,
      "account_sender":1,
      "account_getter":1,
      "send_amount":100.0,
      "get_amount":100.0,
      "transaction_status":true,
      "transaction_type":true,
      "created_date":"2022-11-21"
    },
    {
      "id":1,
      "user_id":1,
      "account_sender":1,
      "account_getter":1,
      "send_amount":100.0,
      "get_amount":100.0,
      "transaction_status":true,
      "transaction_type":true,
      "created_date":"2022-11-21"
    },
    {
      "id":1,
      "user_id":1,
      "account_sender":1,
      "account_getter":1,
      "send_amount":100.0,
      "get_amount":100.0,
      "transaction_status":true,
      "transaction_type":true,
      "created_date":"2022-11-21"
    },
    {
      "id":1,
      "user_id":1,
      "account_sender":1,
      "account_getter":1,
      "send_amount":100.0,
      "get_amount":100.0,
      "transaction_status":true,
      "transaction_type":true,
      "created_date":"2022-11-21"
    },
      {
      "id":1,
      "user_id":1,
      "account_sender":1,
      "account_getter":1,
      "send_amount":100.0,
      "get_amount":100.0,
      "transaction_status":true,
      "transaction_type":true,
      "created_date":"2022-11-21"
    }
  ]
}
    ''';