import 'package:untitled5/domain/entities/transaction_history_entites.dart';

class TransactionModel extends TransactionEntity {
  const TransactionModel(
      {required id,
      required userId,
      required accountSender,
      required accountGetter,
      required sendAmount,
      required getAmount,
      required transactionStatus,
      required createdDate,
      required transactionType})
      : super(
            id: id,
            userId: userId,
            accountSender: accountSender,
            accountGetter: accountGetter,
            sendAmount: sendAmount,
            getAmount: getAmount,
            transactionStatus: transactionStatus,
            createdDate: createdDate,
            transactionType: transactionType);

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      accountSender: json['account_sender'] as int,
      accountGetter: json['account_getter'] as int,
      sendAmount: json['send_amount'] as double,
      getAmount: json['get_amount'] as double,
      transactionStatus: json['transaction_status'] as bool,
      createdDate: DateTime.parse(json['created_date']),
      transactionType: json['transaction_type'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id':id,
      'user_id':userId,
      'account_sender':accountSender,
      'account_getter':accountGetter,
      'send_amount':sendAmount,
      'get_amount':getAmount,
      'transaction_status':transactionStatus,
      'created_date':createdDate,
      'transaction_type':transactionType,
    };
  }

}

class TransactionsHistoryModel extends TransactionsHistoryEntity {
  const TransactionsHistoryModel({required transactionHistory})
      : super(transactionHistory: transactionHistory);

  factory TransactionsHistoryModel.fromJson(Map<String, dynamic> json) {
    return TransactionsHistoryModel(
        transactionHistory: (json['transaction_history'] as List)
            .map((e) => TransactionModel.fromJson(e))
            .toList());
  }

  Map<String, dynamic> toJson() {
    return {
      'transaction_history':transactionHistory,
    };
  }
}
