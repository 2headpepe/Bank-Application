import 'package:dartz/dartz.dart';
import 'package:untitled5/core/error/failure.dart';
import 'package:untitled5/domain/entities/transaction_history_entites.dart';

abstract class TransactionRepository {
  Future<Either<Failure, TransactionsHistoryEntity>> getTransactions();

}
