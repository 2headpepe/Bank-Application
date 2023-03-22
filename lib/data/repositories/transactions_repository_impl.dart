import 'package:untitled5/core/error/exception.dart';
import 'package:untitled5/core/platform/network_info.dart';
import 'package:untitled5/data/datasources/transactions_data_source.dart/transactions_local_data_source.dart';
import 'package:untitled5/data/datasources/transactions_data_source.dart/transactions_remote_data_source.dart';
import 'package:untitled5/domain/entities/transaction_history_entites.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled5/domain/repositories/transaction_repository.dart';

class TransactionsRepositoryImpl implements TransactionRepository {
  final TransactionsRemoteDataSource remoteDataSource;
  final TransactionsLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  TransactionsRepositoryImpl(
      {required this.localDataSource,
      required this.networkInfo,
      required this.remoteDataSource});

  @override
  Future<Either<Failure, TransactionsHistoryEntity>> getTransactions() async {
    if (await networkInfo.isConnected) {
      try {
        final remotePerson = await remoteDataSource.getTransactions();
        //localDataSource.transactionsToCache(remotePerson);
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final locationUser = await localDataSource.getLastTransactionsFromCache();
        return Right(locationUser);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
