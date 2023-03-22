import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled5/core/usecases/usecase.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';
import 'package:untitled5/domain/repositories/currency_rates_repository.dart';

import '../../core/error/failure.dart';

class GetRates extends UseCase<CurrencyRatesEntity, GetRatesParams> {
  final CurrencyRatesRepository currencyRatesRepository;

  GetRates(this.currencyRatesRepository);

  @override
  Future<Either<Failure, CurrencyRatesEntity>> call(
      GetRatesParams params) async {
    return await currencyRatesRepository.getRates(
        params.source, params.currencies);
  }
}

class GetRatesParams extends Equatable {
  final String source;
  final String currencies;
  const GetRatesParams(this.currencies, this.source);

  @override
  List<Object> get props => [source, currencies];
}
