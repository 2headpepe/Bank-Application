import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/domain/entities/token_entity.dart';

import '../../bloc/login_bloc/login_bloc.dart';

class LoginBlocBuilder extends StatelessWidget {
  final Widget Function(TokenEntity str) child;
  final String email;
  final String password;
  const LoginBlocBuilder({super.key, required this.child,required this.email,required this.password});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: ((context, state) {
      context.read<LoginBloc>().add(LoginEvent.fetch(email: email,password: password));
      context.watch<LoginBloc>().state;

      return state.when(
          loading: () => Center(
                child: Row(
                  children: const [
                    CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Loading...',
                    ),
                  ],
                ),
              ),
          loaded: child,
          error: (error) => const Text("error"));
    }));
  }
}
