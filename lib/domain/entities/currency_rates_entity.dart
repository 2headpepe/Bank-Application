import 'package:equatable/equatable.dart';

class CurrencyRatesEntity extends Equatable {
  final String source;
  final Map<String, double> quotes;

  const CurrencyRatesEntity({required this.source, required this.quotes});
  
  @override
  List<Object> get props => [source,quotes];
}