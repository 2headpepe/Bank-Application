part of 'authentication_bloc.dart';


abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent([List props = const []]) : super();

  @override
  List<Object> get props => [];
}

class AuthenticationEventAppStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';
}

class AuthenticationEventLoggedIn extends AuthenticationEvent {
  final String token;

  AuthenticationEventLoggedIn({required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn { token: $token }';
}

class AuthenticationEventLoggedOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';
}
