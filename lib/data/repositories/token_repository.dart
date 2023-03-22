import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/platform/network_info.dart';
import 'package:untitled5/data/datasources/currency_data_source/currency_local_data_source.dart';
import 'package:untitled5/data/datasources/currency_data_source/currency_remote_data_source.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled5/domain/repositories/token_repository.dart';
import 'package:untitled5/globals.dart' as globals;


class TokenRepositoryImpl implements TokenRepository {
  final CurrencyRemoteDataSource remoteDataSource;
  final CurrencyLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  TokenRepositoryImpl(
      {required this.localDataSource,
      required this.networkInfo,
      required this.remoteDataSource});

  @override
  Future<Either<Failure, TokenEntity>> getToken(
      String token) {
    try {
      //final token = sharedPreferences.getString(globals.CACHED_TOKEN);
      if (token != null) {
        return Future.value(Right(TokenEntity(token: token)));
      } else {
        return Future.value(Left(SharedPreferencesFailure()));
      }
    } on Exception {
      return Future.value(Left(SharedPreferencesFailure()));
    }
  }
}
