import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';
import 'package:untitled5/domain/usecases/get_rates.dart';
part 'currency_bloc.freezed.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  late final GetRates getRates;

  CurrencyBloc({required this.getRates})
      : super(const CurrencyState.loading()) {
    on<CurrencyEventFetch>((event, emit) async {
        final currencyLoaded =
            await getRates(GetRatesParams(event.currencies, event.source));
        emit(currencyLoaded.fold(
            (failure) =>
                CurrencyState.error(error: _mapFailureToMessage(failure)),
            (currencyLoaded) =>
                CurrencyState.loaded(currencyRates: currencyLoaded)));
        //CurrencyRates currencyLoaded = await CurrencyRepo.getRates(event.source, event.currencies);
        //emit(CurrencyState.loaded(currencyRates: currencyLoaded));
      
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server failure';
      case CacheFailure:
        return 'Cache failure';
      default:
        return 'Unexpected error';
    }
  }
}

@freezed
class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.fetch(
      {required String source,
      required String currencies}) = CurrencyEventFetch;
}

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.loading() = CurrencyStateLoading;
  const factory CurrencyState.loaded({required CurrencyRatesEntity currencyRates}) =
      CurrencyStateLoaded;
  const factory CurrencyState.error({required String error}) =
      CurrencyStateError;
}
