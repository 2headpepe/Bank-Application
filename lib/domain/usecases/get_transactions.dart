import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled5/core/usecases/usecase.dart';
import 'package:untitled5/domain/entities/transaction_history_entites.dart';
import 'package:untitled5/domain/repositories/transaction_repository.dart';

import '../../core/error/failure.dart';

class GetTransactions extends UseCaseWithoutParams<TransactionsHistoryEntity> {
  final TransactionRepository transactionRepository;

  GetTransactions(this.transactionRepository);

  @override
  Future<Either<Failure, TransactionsHistoryEntity>> call() async {
    return await transactionRepository.getTransactions();
  }
}

class TransactionHistoryParams extends Equatable {
  @override
  List<Object> get props => [];
}
