import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import 'package:untitled5/domain/usecases/login.dart';

part 'login_bloc.freezed.dart';

/*
class LoginBLoc extends Bloc<LoginEvent, LoginState> {
  late final UserRepo userRepo;
  LoginBLoc({required this.userRepo}) : super(const LoginState.loading()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(const LoginState.loading());
      try {
        var token = await userRepo.auth();
        emit(LoginState.logedIn(token: token));
      } catch (e) {
        emit(const LoginState.error());
      }
    });
  }
}*/
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late final Login login;

  LoginBloc({required this.login}) : super(const LoginState.loading()) {
    on<LoginEventFetch>((event, emit) async {
      try {
        final tokenLoaded = await login(
            AuthParams(email: event.email, password: event.password));
        emit(tokenLoaded.fold(
            (l) => LoginState.error(error: _mapFailureToMessage(l)),
            (r) => LoginState.loaded(token: r)));
      } catch (e) {
        emit(LoginState.error(error: e.toString()));
      }
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
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.fetch(
      {required String email, required String password}) = LoginEventFetch;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.loaded({required TokenEntity token}) =
      LoginStateLoaded;
  const factory LoginState.error({required String error}) = LoginStateError;
}

/*
@freezed
class UserState with _$UserState {
  const factory LoginState.loading() = _LoginStateLoading;
  const factory LoginState.logedIn({required String token}) =
      _LoginStateLogedIn;
  const factory LoginState.error() = _LoginStateError;
}

@freezed
class UserEvent with _$LoginEvent {
  const factory LoginEvent.buttonPressed(
      {required String email, required String password}) = LoginButtonPressed;
}
*/