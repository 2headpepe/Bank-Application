import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/error/exception.dart';
import 'package:untitled5/data/models/currency.dart';



abstract class CurrencyLocalDataSource {
  Future<CurrencyRatesModel> getLastCurrencyFromCache();
  Future<void> currencyToCache(CurrencyRatesModel currencyRatesModel);
}

const CACHED_CURRENCY = 'CACHED_CURRENCY';

class CurrencyLocalDataSourceImpl extends CurrencyLocalDataSource {
  late final SharedPreferences sharedPreferences;

  CurrencyLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<CurrencyRatesModel> getLastCurrencyFromCache() {
    final jsonUser = sharedPreferences.getString(CACHED_CURRENCY);
    if (jsonUser != null) {
      return Future.value(CurrencyRatesModel.fromJson(json.decode(jsonUser)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> currencyToCache(CurrencyRatesModel currencyRatesModel) {
    final String jsonUser = json.encode(currencyRatesModel.toJson());

    sharedPreferences.setString(CACHED_CURRENCY, jsonUser);
    return Future.value();
  }
}
