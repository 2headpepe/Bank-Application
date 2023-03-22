import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user_bloc/user_bloc.dart';


class UserBlocBuilder extends StatelessWidget {
  final String token;
  final Widget Function(dynamic user) child;
  const UserBlocBuilder({super.key, required this.token, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: ((context, state) {
      context.read<UserBloc>().add(UserEvent.fetch(token: token));
      var state = context.watch<UserBloc>().state;

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
          error: (error) => Text("error: $error"));
    }));
  }
}
