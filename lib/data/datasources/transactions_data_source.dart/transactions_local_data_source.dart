import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/error/exception.dart';
import 'package:untitled5/data/models/transaction_history.dart';



abstract class TransactionsLocalDataSource {
  Future<TransactionsHistoryModel> getLastTransactionsFromCache();
  Future<void> transactionsToCache(TransactionsHistoryModel transactionsModel);
}

const CACHED_TRANSACTIONS = 'CACHED_TRANSACTIONS';

class TransactionsLocalDataSourceImpl extends TransactionsLocalDataSource {
  late final SharedPreferences sharedPreferences;

  TransactionsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<TransactionsHistoryModel> getLastTransactionsFromCache() {
    final jsonUser = sharedPreferences.getString(CACHED_TRANSACTIONS);
    if (jsonUser != null) {
      return Future.value(TransactionsHistoryModel.fromJson(json.decode(jsonUser)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> transactionsToCache(TransactionsHistoryModel transactionsModel) {
    final String jsonUser = json.encode(transactionsModel.toJson());

    sharedPreferences.setString(CACHED_TRANSACTIONS, jsonUser);
    return Future.value();
  }
}
