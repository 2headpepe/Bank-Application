import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled5/core/usecases/usecase.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import 'package:untitled5/domain/repositories/user_repository.dart';

import '../../core/error/failure.dart';

class Login extends UseCase<TokenEntity, AuthParams> {
  final UserRepository userRepository;
  Login(this.userRepository);

  @override
  Future<Either<Failure, TokenEntity>> call(
      AuthParams params) async {
    return await userRepository.auth(params.email,params.password);
  }
}

class AuthParams extends Equatable {
  final String email;
  final String password;
  const AuthParams({required this.email,required this.password});

  @override
  List<Object> get props => [email,password];
}
