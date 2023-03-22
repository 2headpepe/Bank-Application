import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled5/core/usecases/usecase.dart';
import 'package:untitled5/domain/repositories/user_repository.dart';

import '../../core/error/failure.dart';
import '../entities/user_entity.dart';

class GetUser extends UseCase<UserEntity, GetUserParams> {
  final UserRepository userRepository;
  GetUser(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(
      GetUserParams params) async {
    return await userRepository.getUser(params.token);
  }
}

class GetUserParams extends Equatable {
  final String token;
  const GetUserParams({required this.token});

  @override
  List<Object> get props => [token];
}
