import 'package:equatable/equatable.dart';

class TransactionsHistoryEntity extends Equatable {
  final List<TransactionEntity> transactionHistory;

  const TransactionsHistoryEntity({required this.transactionHistory});

  @override
  List<Object> get props => [transactionHistory];
}

class TransactionEntity extends Equatable {
  final int id;
  final int userId;
  final int accountSender;
  final int accountGetter;
  final double sendAmount;
  final double getAmount;
  final bool transactionStatus;
  final DateTime createdDate;
  final bool transactionType;

  const TransactionEntity(
      {required this.id,
      required this.userId,
      required this.accountSender,
      required this.accountGetter,
      required this.sendAmount,
      required this.getAmount,
      required this.transactionStatus,
      required this.createdDate,
      required this.transactionType});

  @override
  List<Object> get props => [
        id,
        userId,
        accountSender,
        accountGetter,
        sendAmount,
        getAmount,
        transactionStatus,
        createdDate,
        transactionType,
      ];
}
