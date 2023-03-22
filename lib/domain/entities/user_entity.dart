import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String firstName;
  final String secondName;
  final DateTime birthDate;
  final String email;
  final String password;
  final bool isAdmin;
  final DateTime createdDate;
  final List<CurrencyEntity> briefcase;

  const UserEntity(
      {required this.firstName,
      required this.secondName,
      required this.birthDate,
      required this.email,
      required this.password,
      required this.isAdmin,
      required this.createdDate,
      required this.briefcase,
      required this.id});

  // UserEntity.registration(
  //     {required this.password,
  //     required this.email,
  //     required this.firstName,
  //     required this.secondName});

  @override
  List<Object> get props => [
        id,
        firstName,
        secondName,
        birthDate,
        email,
        password,
        isAdmin,
        createdDate,
        briefcase
      ];
}

class CurrencyEntity extends Equatable {
  final int id;
  final double amount;
  final int briefcaseId;
  final String currency;

  const CurrencyEntity(
      {required this.id,
      required this.amount,
      required this.briefcaseId,
      required this.currency});

  @override
  List<Object> get props => [id, amount, briefcaseId, currency];
}
