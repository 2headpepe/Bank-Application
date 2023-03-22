import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:untitled5/domain/entities/transaction_history_entites.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/presentation/pages/choose_account_page.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/token_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/user_bloc_builder.dart';
import 'package:untitled5/presentation/widgets/card_widget.dart';
import 'package:untitled5/presentation/widgets/colored_button.dart';
import 'package:untitled5/globals.dart' as globals;

class CardInfoPage extends StatelessWidget {
  final String name;
  final List<Color> colors;
  final CurrencyEntity currencyAccount;
  final TransactionsHistoryEntity transactionsHistory;

  const CardInfoPage({
    Key? key,
    required this.currencyAccount,
    required this.name,
    required this.colors,
    required this.transactionsHistory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: SizedBox(
        height: height +
            height * (transactionsHistory.transactionHistory.length - 3) / 8.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: EdgeInsets.only(top: height / 24),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_downward))),
            Padding(
              padding: EdgeInsets.only(top: height / 64),
              child: CardWidget(
                name: name,
                colors: colors,
                currencyAccount: currencyAccount,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: width / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Material(
                                  child: UserBlocBuilder(
                                      token: (globals.spToken.getString(globals.CACHED_TOKEN))??'1',
                                      child: (user) => PlaceAllAccounts(
                                            sender: currencyAccount,
                                            senderName: name,
                                            senderColors: colors,
                                            userInfo: user,
                                          )))));
                    },
                    child: ColoredButton(
                      dropShadow: true,
                      colors: const [
                        Color.fromRGBO(1, 20, 70, 1),
                        Color.fromRGBO(1, 20, 70, 1),
                        Color.fromRGBO(1, 20, 70, 1),
                        Color.fromRGBO(1, 20, 70, 1),
                      ],
                      width: width / 3,
                      height: width / 10,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Send money",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 16,
                            color: const Color.fromRGBO(255, 250, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ColoredButton(
                      dropShadow: true,
                      colors: const [
                        Color.fromRGBO(1, 20, 70, 1),
                        Color.fromRGBO(1, 20, 70, 1),
                        Color.fromRGBO(1, 20, 70, 1),
                        Color.fromRGBO(1, 20, 70, 1),
                      ],
                      width: width / 3,
                      height: width / 10,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Get money",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 16,
                            color: const Color.fromRGBO(255, 250, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:
                  height / 8.1 * transactionsHistory.transactionHistory.length,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction history",
                    style: GoogleFonts.merriweather(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (int i = 0;
                      i < transactionsHistory.transactionHistory.length;
                      ++i)
                    TransactionTile(
                      transaction: transactionsHistory.transactionHistory[i],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final TransactionEntity transaction;

  const TransactionTile({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 10,
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: ListTile(
        leading: const Icon(Icons.money),
        subtitle: Text(
            (DateFormat("yy-MM-dd").format(transaction.createdDate) ==
                    DateFormat("yy-MM-dd").format(DateTime.now()))
                ? "Today ${DateFormat("hh:mm").format(transaction.createdDate)}"
                : DateFormat("yy-MM-dd-hh:mm").format(transaction.createdDate)),
        title: Text((transaction.transactionType)
            ? '${transaction.getAmount}'
            : '-${transaction.getAmount}'),
      ),
    );
  }
}
