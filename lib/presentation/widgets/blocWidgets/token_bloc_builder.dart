import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/domain/entities/token_entity.dart';

import '../../bloc/token_bloc/token_bloc.dart';

class TokenBlocBuilder extends StatelessWidget {
  final Widget Function(TokenEntity) child;
  const TokenBlocBuilder({super.key, required this.child,required this.token});
  final String token;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TokenBloc, TokenState>(builder: ((context, state) {
      context.read<TokenBloc>().add(TokenEvent.fetch(token));
      context.watch<TokenBloc>().state;

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
