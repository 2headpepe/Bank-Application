import 'package:untitled5/core/error/exception.dart';
import 'package:untitled5/core/platform/network_info.dart';
import 'package:untitled5/data/datasources/currency_data_source/currency_local_data_source.dart';
import 'package:untitled5/data/datasources/currency_data_source/currency_remote_data_source.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/currency_rates_repository.dart';

class CurrencyRepositoryImpl implements CurrencyRatesRepository {
  final CurrencyRemoteDataSource remoteDataSource;
  final CurrencyLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  CurrencyRepositoryImpl(
      {required this.localDataSource,
      required this.networkInfo,
      required this.remoteDataSource});

  @override
  Future<Either<Failure, CurrencyRatesEntity>> getRates(String source, String currencies) async {
    if (await networkInfo.isConnected) {
      try {
        final remotePerson = await remoteDataSource.getCurrency(source,currencies);
        localDataSource.currencyToCache(remotePerson);
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final locationCurrency = await localDataSource.getLastCurrencyFromCache();
        return Right(locationCurrency);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
