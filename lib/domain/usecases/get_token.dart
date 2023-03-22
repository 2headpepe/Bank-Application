import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/usecases/usecase.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import 'package:untitled5/domain/repositories/token_repository.dart';

import '../../core/error/failure.dart';

class GetToken extends UseCase<TokenEntity,GetTokenParams> {
  final TokenRepository tokenRepository;

  GetToken(this.tokenRepository);

  @override
  Future<Either<Failure, TokenEntity>> call(
      GetTokenParams params) async {
    return await tokenRepository.getToken(params.token);
  }
}

class GetTokenParams extends Equatable {
  final String token;

  const GetTokenParams(this.token);

  @override
  List<Object?> get props => [];
}
