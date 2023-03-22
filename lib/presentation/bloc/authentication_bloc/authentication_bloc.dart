// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled5/domain/usecases/get_user.dart';
// import 'package:user_repository/user_repository.dart';
 import 'package:equatable/equatable.dart';

 part 'authentication_state.dart';
 part 'authentication_event.dart';

// class AuthenticationBloc
//     extends Bloc<AuthenticationEvent, AuthenticationState> {
//   late final GetUser userRepo;

//   AuthenticationBloc({required this.userRepo})
//       : super(AuthenticationStateLoading());

//   AuthenticationState get initialState => AuthenticationStateUnintializated();

//   Stream<AuthenticationState> mapEventToState(
//       AuthenticationEvent event, AuthenticationState emit) async* {
//     if (event is AuthenticationEventAppStarted) {
//       final 
//       final bool hasToken = await userRepo.hasToken();
//       if (hasToken) {
//         yield AuthenticationStateAuthentificated();
//       } else {
//         yield AuthenticationStateUnauthentificated();
//       }
//     }
//     if (event is AuthenticationEventLoggedIn) {
//       yield AuthenticationStateLoading();
//       await userRepo.persistToken(event.token);
//       yield AuthenticationStateAuthentificated();
//     }
//     if (event is AuthenticationEventLoggedOut) {
//       yield AuthenticationStateLoading();
//       await userRepo.deleteToken();
//       yield AuthenticationStateUnauthentificated();
//     }
//   }
// }
