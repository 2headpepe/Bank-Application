import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/transaction_history_entites.dart';
import 'package:untitled5/domain/usecases/get_transactions.dart';
part 'transaction_bloc.freezed.dart';

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  late final GetTransactions getTransactions;

  TransactionsBloc({required this.getTransactions})
      : super(const TransactionsState.loading()) {
    on<TransactionsEventFetch>((event, emit) async {
      //emit(const TransactionsState.loading());
        final transactionsLoaded = await getTransactions();
        emit(transactionsLoaded.fold((failure) =>
                TransactionsState.error(error: _mapFailureToMessage(failure)),
            (currencyLoaded) =>
                TransactionsState.loaded(transactionsHistory: currencyLoaded)));
        // TransactionsHistory transactionsLoaded =
        //     TransactionsRepo.getTransactions();
        // emit(
        //     TransactionsState.loaded(transactionsHistory: transactionsLoaded));
      
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
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.fetch() = TransactionsEventFetch;
}

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState.loading() = TransactionsStateLoading;
  const factory TransactionsState.loaded(
          {required TransactionsHistoryEntity transactionsHistory}) =
      TransactionsStateLoaded;
  const factory TransactionsState.error({required String error}) =
      TransactionsStateError;
}
