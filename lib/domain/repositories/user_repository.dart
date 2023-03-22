import 'package:dartz/dartz.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import '../../core/error/failure.dart';
import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(String token);
  Future<Either<Failure, TokenEntity>> auth(String email,String password);
}
