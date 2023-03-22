


import 'package:untitled5/domain/entities/currency_rates_entity.dart';

class CurrencyRatesModel extends CurrencyRatesEntity {

  const CurrencyRatesModel({required source, required quotes}):super(quotes: quotes,source: source);

  factory CurrencyRatesModel.fromJson(Map<String, dynamic> json) {
    return CurrencyRatesModel(
        source: json['source'] as String,
        quotes: json['quotes'].cast<String, double>());
  }

  Map<String, dynamic> toJson() {
    return {
      'source':source,
      'quotes':quotes,
    };
  }
}