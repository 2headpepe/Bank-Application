import 'package:untitled5/core/error/exception.dart';
import 'package:untitled5/core/platform/network_info.dart';
import 'package:untitled5/data/datasources/user_data_source/user_local_data_source.dart';
import 'package:untitled5/data/datasources/user_data_source/user_remote_data_source.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:untitled5/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  UserRepositoryImpl(
      {required this.localDataSource,
      required this.networkInfo,
      required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> getUser(String token) async {
    if (await networkInfo.isConnected) {
      try {
        final remotePerson = await remoteDataSource.getUser(token);
        //localDataSource.userToCache(remotePerson);
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final locationUser = await localDataSource.getLastUserFromCache();
        return Right(locationUser);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, TokenEntity>> auth(
      String email, String password) async {
    try {
      final token = await remoteDataSource.auth(email, password);
      return Right(token);
    } on Exception {
      return Future.value(Left(AuthFailure()));
    }
  }

  bool _checkIfLoggedIn() {
    //check if password and email are good
    return true;
  }
}
