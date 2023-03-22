import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';

import '../../bloc/currency_bloc/currency_bloc.dart';


class CurrencyBlocBuilder extends StatelessWidget {
  final Widget Function(CurrencyRatesEntity str) child;
  final String source;
  final String currencies;

  const CurrencyBlocBuilder({super.key, required this.child,required this.currencies,required this.source});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrencyBloc, CurrencyState>(builder: ((context, state) {
      context.read<CurrencyBloc>().add(CurrencyEvent.fetch(source: source,currencies: currencies));
      context.watch<CurrencyBloc>().state;

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
