import 'package:untitled5/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required firstName,
      required secondName,
      required birthDate,
      required email,
      required password,
      required isAdmin,
      required createdDate,
      required briefcase,
      required id})
      : super(
            firstName: firstName,
            secondName: secondName,
            birthDate: birthDate,
            email: email,
            password: password,
            isAdmin: isAdmin,
            createdDate: createdDate,
            briefcase: briefcase,
            id: id);

  // UserModel.registration(
  //     {required password,
  //     required email,
  //     required firstName,
  //     required secondName})
  //     : super(
  //           firstName: firstName,
  //           secondName: secondName,
  //           password: password,
  //           email: email);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    var jsonResult = (json['briefcase'] as List)
        .map((e) => CurrencyModel.fromJson(e))
        .toList();
    return UserModel(
      firstName: json['first_name'] as String,
      secondName: json['second_name'] as String,
      birthDate: DateTime.parse(json['birth_date']),
      email: json['email'] as String,
      password: json['password'] as String,
      isAdmin: ((json['is_admin'].toString().toLowerCase()) == 'true'),
      //json['is_admin'] as bool,
      createdDate: DateTime.parse(json['birth_date']),
      //createdDate: DateTime.now(),//переделать
      //DateTime.parse(json['created_date']),
      briefcase: jsonResult,
      id: json['id'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'second_name': secondName,
      'birth_date': birthDate.toString(),
      'email': email,
      'password': password,
      'is_admin': isAdmin,
      'created_date': createdDate.toString(),
      'briefcase': (briefcase).map((e) => currencyModeltoJson(e)) as List,
      'id':id,
    };
  }
}

class CurrencyModel extends CurrencyEntity {
  const CurrencyModel(
      {required id, required amount, required briefcaseId, required currency})
      : super(
            amount: amount,
            id: id,
            briefcaseId: briefcaseId,
            currency: currency);

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
        id: json['id'],
        amount: json['amount'],
        briefcaseId: json['briefcase_id'],
        currency: json['currency']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id':id,
      'amount':amount,
      'briefcase_id':briefcaseId,
      'currency':currency,
    };
  }
}
Map<String, dynamic> currencyModeltoJson(CurrencyEntity currencyEntity) {
    return {
      'id':currencyEntity.id,
      'amount':currencyEntity.amount,
      'briefcase_id':currencyEntity.briefcaseId,
      'currency':currencyEntity.currency,
    };
  }