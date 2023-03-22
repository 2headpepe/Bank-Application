import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/locator_service.dart';
import 'package:untitled5/presentation/bloc/currency_bloc/currency_bloc.dart';
import 'package:untitled5/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:untitled5/presentation/bloc/token_bloc/token_bloc.dart';
import 'package:untitled5/presentation/bloc/transaction_bloc/transaction_bloc.dart';
import 'package:untitled5/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:untitled5/presentation/pages/login_page.dart';

import 'package:untitled5/globals.dart' as globals;
import 'locator_service.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  globals.spToken = await SharedPreferences.getInstance();

  //TransactionsRepo.getTransactions();
  runApp(const MaterialApp(
    home: Material(child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (context) => sl<UserBloc>()),
        BlocProvider<CurrencyBloc>(create: (context) => sl<CurrencyBloc>()),
        BlocProvider<TransactionsBloc>(
            create: (context) => sl<TransactionsBloc>()),
        BlocProvider<TokenBloc>(create: (context) => sl<TokenBloc>()),
        BlocProvider<LoginBloc>(create: (context) => sl<LoginBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          child: LoginPage(),
          
        ),
          
          
          
          
      ),
    );
  }
}
