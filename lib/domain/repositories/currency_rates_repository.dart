import 'package:dartz/dartz.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';

abstract class CurrencyRatesRepository {
  Future<Either<Failure, CurrencyRatesEntity>> getRates(
      String source, String currencies);
}
