import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/transaction_bloc/transaction_bloc.dart';


class TransactionsBlocBuilder extends StatelessWidget {
  final Widget Function(dynamic transactions) child;
  const TransactionsBlocBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsBloc, TransactionsState>(builder: ((context, state) {
      context.read<TransactionsBloc>().add(const TransactionsEvent.fetch());
      var state = context.watch<TransactionsBloc>().state;

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
