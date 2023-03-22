part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationStateUnintializated extends AuthenticationState {}

class AuthenticationStateAuthentificated extends AuthenticationState {}

class AuthenticationStateUnauthentificated extends AuthenticationState {}

class AuthenticationStateLoading extends AuthenticationState {}
