import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/token_entity.dart';
import 'package:untitled5/domain/usecases/get_token.dart';

part 'token_bloc.freezed.dart';

class TokenBloc extends Bloc<TokenEvent, TokenState> {
  final GetToken getToken;
  TokenBloc({required this.getToken}) : super(const TokenState.loading()) {
    on<TokenEventFetch>((event, emit) async {
      emit(const TokenState.loading());
      var token = await getToken(GetTokenParams(event.token));
      emit(token.fold((l) => TokenState.error(error: _mapFailureToMessage(l)),
          (r) => TokenState.loaded(token: r)));
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
class TokenState with _$TokenState {
  const factory TokenState.loading() = TokenStateLoading;
  const factory TokenState.loaded({required TokenEntity token}) =
      TokenStateLoaded;
  const factory TokenState.error({required String error}) = TokenStateError;
}

@freezed
class TokenEvent with _$TokenEvent {
  const factory TokenEvent.fetch(String token) =
      TokenEventFetch;
}
