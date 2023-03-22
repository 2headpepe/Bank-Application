import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/error/exception.dart';

import '../../models/user.dart';


abstract class UserLocalDataSource {
  Future<UserModel> getLastUserFromCache();
  Future<void> userToCache(UserModel user);
}

const CACHED_USER = 'CACHED_USER';

class UserLocalDataSourceImpl extends UserLocalDataSource {
  late final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserModel> getLastUserFromCache() {
    final jsonUser = sharedPreferences.getString(CACHED_USER);
    if (jsonUser != null) {
      return Future.value(UserModel.fromJson(json.decode(jsonUser)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> userToCache(UserModel user) {
    final jsonUser = json.encode(user.toJson());

    sharedPreferences.setString(CACHED_USER, jsonUser);
    return Future.value();
  }
}
