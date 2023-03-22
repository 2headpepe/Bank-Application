
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';
import 'package:untitled5/domain/entities/transaction_history_entites.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/presentation/pages/home_page.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/currency_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/token_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/user_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/card_widget.dart';

import '../../globals.dart';

class PlaceAllAccounts extends StatefulWidget {
  final UserEntity userInfo;
  final CurrencyEntity sender;
  final String senderName;
  final List<Color> senderColors;

  //late CurrencyRates currencyRates;

  const PlaceAllAccounts({
    Key? key,
    required this.sender,
    required this.senderName,
    required this.senderColors,
    required this.userInfo,
    //required this.currencyRates,
  }) : super(key: key);

  @override
  State<PlaceAllAccounts> createState() => _PlaceAllAccountsState();
}

class _PlaceAllAccountsState extends State<PlaceAllAccounts> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: height +
            width * 0.7 * 54 / 86 * (widget.userInfo.briefcase.length - 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "Choose account to send money",
              style: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            for (int i = 0; i < widget.userInfo.briefcase.length; ++i)
              CardWidget(
                name:
                    '${widget.userInfo.secondName} ${widget.userInfo.firstName}',
                colors: colors[i % colors.length],
                currencyAccount: widget.userInfo.briefcase[i],
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Material(
                            child: CurrencyBlocBuilder(
                          child: (currency) => SendingMoneyPage(
                              sender: widget.sender,
                              receiver: widget.userInfo.briefcase[i],
                              senderName: widget.senderName,
                              receiverName:
                                  '${widget.userInfo.secondName} ${widget.userInfo.firstName}',
                              receiverColors: colors[i % colors.length],
                              senderColors: widget.senderColors,
                              userInfo: widget.userInfo,
                              currencyRate: currency),
                          source: widget.sender.currency,
                          currencies: widget.userInfo.briefcase[i].currency,
                        )),
                      ));
                },
              )
          ],
        ),
      ),
    );
  }
}

class SendingMoneyPage extends StatefulWidget {
  final String senderName;
  final String receiverName;
  final CurrencyEntity receiver;
  final CurrencyEntity sender;
  final List<Color> senderColors;
  final List<Color> receiverColors;
  final UserEntity userInfo;
  final CurrencyRatesEntity currencyRate;

  const SendingMoneyPage({
    Key? key,
    required this.sender,
    required this.receiver,
    required this.senderName,
    required this.receiverName,
    required this.receiverColors,
    required this.senderColors,
    required this.userInfo,
    required this.currencyRate,
  }) : super(key: key);

  @override
  State<SendingMoneyPage> createState() => _SendingMoneyPageState();
}

class _SendingMoneyPageState extends State<SendingMoneyPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromRGBO(227, 227, 253, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CardWidget(
              name: widget.senderName,
              colors: widget.senderColors,
              currencyAccount: widget.sender,
              onPressed: () {}),
          const Icon(
            Icons.arrow_downward,
            size: 50,
          ),
          CardWidget(
              name: widget.receiverName,
              colors: widget.receiverColors,
              currencyAccount: widget.receiver,
              onPressed: () {}),
          ListTile(
            title: Text(
              "Choose needed sum",
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              textAlign: TextAlign.center,
              (widget.receiver.currency == widget.sender.currency)
                  ? "Currency rate: 1.0"
                  : "Currency rate: ${widget.currencyRate.quotes['${widget.receiver.currency}${widget.sender.currency}']}",
              style: GoogleFonts.merriweather(
                fontSize: 16,
              ),
            ),
          ),
          TextField(
            controller: _controller,
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            child: const Text("Confirm"),
            onTap: () {
              setState(() {
              try {
                double amount = double.parse(_controller.text);
                if (amount <= widget.sender.amount) {
                  if (widget.currencyRate.quotes[
                          '${widget.receiver.amount}${widget.receiver.currency}'] !=
                      null) {
                    if (amount > 0) {
                      TransactionEntity(
                        accountGetter: widget.receiver.id,
                        userId: widget.userInfo.id,
                        accountSender: widget.sender.id,
                        createdDate: DateTime.now(),
                        getAmount: amount *
                            widget.currencyRate.quotes[
                                '${widget.sender.currency} ${widget.receiver.currency}']!,
                        sendAmount: amount,
                        transactionStatus: false,
                        transactionType: true,
                        id: 0,
                      );
                    } else {
                      TransactionEntity(
                        accountGetter: widget.receiver.id,
                        userId: widget.userInfo.id,
                        accountSender: widget.sender.id,
                        createdDate: DateTime.now(),
                        getAmount: -amount *
                            widget.currencyRate.quotes[
                                '${widget.sender.currency} ${widget.receiver.currency}']!,
                        sendAmount: -amount,
                        transactionStatus: false,
                        transactionType: false,
                        id: 0,
                      );
                    }
                  } else if (widget.sender.currency ==
                      widget.receiver.currency) {
                    if (amount > 0) {
                      TransactionEntity(
                        accountGetter: widget.receiver.id,
                        userId: widget.userInfo.id,
                        accountSender: widget.sender.id,
                        createdDate: DateTime.now(),
                        getAmount: amount,
                        sendAmount: amount,
                        transactionStatus: false,
                        transactionType: true,
                        id: 0,
                      );
                    } else {
                      TransactionEntity(
                        accountGetter: widget.receiver.id,
                        userId: widget.userInfo.id,
                        accountSender: widget.sender.id,
                        createdDate: DateTime.now(),
                        getAmount: -amount,
                        sendAmount: -amount,
                        transactionStatus: false,
                        transactionType: false,
                        id: 0,
                      );
                    }
                  } else {
                    const AlertDialog(
                      title: Text("Unable to transfer money"),
                    );
                  }
                }
              } catch (e) {
                if (kDebugMode) {
                  print(e.toString());
                }
              }
            });
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Material(
                            child: UserBlocBuilder(
                                  token: (spToken.getString(CACHED_TOKEN))??'1',
                                  child: ((user) =>
                                      HomePage(userInfo: user)))),
                            ),
                          );
            },
          ),
        ],
      ),
    );
  }
}
