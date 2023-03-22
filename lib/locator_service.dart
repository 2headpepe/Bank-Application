import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/core/platform/network_info.dart';
import 'package:untitled5/data/datasources/transactions_data_source.dart/transactions_local_data_source.dart';
import 'package:untitled5/data/datasources/transactions_data_source.dart/transactions_remote_data_source.dart';
import 'package:untitled5/data/repositories/currency_repository_impl.dart';
import 'package:untitled5/data/repositories/token_repository.dart';
import 'package:untitled5/data/repositories/transactions_repository_impl.dart';
import 'package:untitled5/data/repositories/user_repository_impl.dart';
import 'package:untitled5/domain/repositories/currency_rates_repository.dart';
import 'package:untitled5/domain/repositories/token_repository.dart';
import 'package:untitled5/domain/repositories/transaction_repository.dart';
import 'package:untitled5/domain/repositories/user_repository.dart';
import 'package:untitled5/domain/usecases/get_token.dart';
import 'package:untitled5/domain/usecases/get_transactions.dart';
import 'package:untitled5/domain/usecases/get_user.dart';
import 'package:untitled5/domain/usecases/login.dart';
import 'package:untitled5/presentation/bloc/currency_bloc/currency_bloc.dart';
import 'package:untitled5/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:untitled5/presentation/bloc/token_bloc/token_bloc.dart';
import 'package:untitled5/presentation/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:untitled5/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:http/http.dart' as http;
import 'data/datasources/currency_data_source/currency_local_data_source.dart';
import 'data/datasources/currency_data_source/currency_remote_data_source.dart';
import 'data/datasources/user_data_source/user_local_data_source.dart';
import 'data/datasources/user_data_source/user_remote_data_source.dart';
import 'domain/usecases/get_rates.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc
  sl.registerFactory(
    () => UserBloc(getUser: sl()),
  );
  sl.registerFactory(
    () => CurrencyBloc(getRates: sl()),
  );
  sl.registerFactory(
    () => TransactionsBloc(getTransactions: sl()),
  );
  sl.registerFactory(
    () => TokenBloc(getToken: sl()),
  );
  sl.registerFactory(
    () => LoginBloc(login: sl()),
  );

  // sl.registerFactory(
  //   () => LoginBloc(userInfoRepo: sl()),
  // );

  //UseCase
  sl.registerLazySingleton(
    () => GetUser(sl()),
  );
  sl.registerLazySingleton(
    () => GetRates(sl()),
  );
  sl.registerLazySingleton(
    () => GetTransactions(sl()),
  );
  sl.registerLazySingleton(
    () => GetToken(sl()),
  );
  sl.registerLazySingleton(
    () => Login(sl()),
  );
  //Repo
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
        localDataSource: sl(),
        networkInfo: sl(),
        remoteDataSource: sl(),
      ));

  sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<UserLocalDataSource>(
      () => UserLocalDataSourceImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<TokenRepository>(() => TokenRepositoryImpl(
        localDataSource: sl(),
        networkInfo: sl(),
        remoteDataSource: sl(),
      ));

  sl.registerLazySingleton<TransactionRepository>(() =>
      TransactionsRepositoryImpl(
          localDataSource: sl(), networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton<TransactionsRemoteDataSource>(
      () => TransactionsRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<TransactionsLocalDataSource>(
      () => TransactionsLocalDataSourceImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<CurrencyRatesRepository>(
      () => CurrencyRepositoryImpl(
            localDataSource: sl(),
            networkInfo: sl(),
            remoteDataSource: sl(),
          ));
  sl.registerLazySingleton<CurrencyLocalDataSource>(
      () => CurrencyLocalDataSourceImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<CurrencyRemoteDataSource>(
      () => CurrencyRemoteDataSourceImpl(client: sl()));
  //Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
