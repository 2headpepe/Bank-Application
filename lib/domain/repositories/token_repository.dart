import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/token_entity.dart';

abstract class TokenRepository {
  Future<Either<Failure, TokenEntity>> getToken(String token);

}
