import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/domain/usecases/get_user.dart';
part 'user_bloc.freezed.dart';

const token = '';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUser getUser;

  UserBloc({required this.getUser}) : super(const UserState.loading()) {
    on<UserEventFetch>((event, emit) async {
      //emit(const UserState.loading());
      final userLoaded = await getUser(const GetUserParams(token: token)); //поменять
      emit(userLoaded.fold(
          (failure) => UserStateError(error: _mapFailureToMessage(failure)),
          (user) => UserState.loaded(fullUserInfo: user)));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server failure';
      case CacheFailure:
        return 'Cache failure';
      default:
        return 'Unexpected error';
    }
  }
}

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetch({required String token}) = UserEventFetch;
}

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = UserStateLoading;
  const factory UserState.loaded({required UserEntity fullUserInfo}) =
      UserStateLoaded;
  const factory UserState.error({required String error}) = UserStateError;
}
