import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/transactions_bloc_builder.dart';

import '../../../globals.dart';
import '../../presentation/bloc/currency_bloc/currency_bloc.dart';
import '../widgets/card_widget.dart';
import '../widgets/colored_button.dart';
import '../../presentation/widgets/grafic.dart';
import 'card_info_page.dart';

///home page info - main page with extended info about user
class HomePageInfo extends StatefulWidget {
  final UserEntity userInfo;

  const HomePageInfo({super.key, required this.userInfo});

  @override
  State<HomePageInfo> createState() => _HomePageInfoState();
}

class _HomePageInfoState extends State<HomePageInfo> {
  void _incrementCounter(String currency) {
    setState(() {
      widget.userInfo.briefcase.add(CurrencyEntity(
          id: 1, amount: 0.0, briefcaseId: 1, currency: currency));
    });
  }

  CurrencyRatesEntity currencyRates = const CurrencyRatesEntity(source: "USD", quotes: {
    "USDAUD": 1.278342,
    "USDEUR": 1.278342,
    "USDGBP": 0.908019,
    "USDPLN": 3.731504
  });

  void _updateRates() {
    setState(() {
      final state = context.watch<CurrencyBloc>().state;
      state.when(
          loading: () {},
          loaded: (currencyLoaded) {
            currencyRates = currencyLoaded;
          },
          error: (error) {});
    });
  }

  List<Widget> cardsWidgets = [];
  int k = 0;

  @override
  Widget build(BuildContext context) {
    cardsWidgets = [
      for (int i = 0; i < widget.userInfo.briefcase.length; ++i)
        CardWidget(
          name: '${widget.userInfo.secondName} ${widget.userInfo.firstName}',
          colors: colors[i % colors.length],
          currencyAccount: widget.userInfo.briefcase[i],
          onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Material(child:
                  TransactionsBlocBuilder(child:(transactions) => Material(
                            child: CardInfoPage(
                              name:
                              '${widget.userInfo.secondName} ${widget.userInfo.firstName}',
                              colors: colors[i % colors.length],
                              currencyAccount: widget.userInfo.briefcase[i],
                              transactionsHistory: transactions,
                            ),
                          ),),
                  )));},
        ),
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String typeOfCurrency = "USD";
    double amountOfMoney = 0.0;
    for (int i = 0; i < widget.userInfo.briefcase.length; ++i) {
      String course = '$typeOfCurrency${widget.userInfo.briefcase[i].currency}';
      if (currencyRates.quotes[course] != null) {
        amountOfMoney +=
            widget.userInfo.briefcase[i].amount * currencyRates.quotes[course]!;
      } else if (typeOfCurrency == widget.userInfo.briefcase[i].currency) {
        amountOfMoney += widget.userInfo.briefcase[i].amount;
      }
    }

    return SingleChildScrollView(
      child: Container(
        color: const Color.fromRGBO(227, 227, 253, 1),
        height: height * 1.5 + width * 0.6 * widget.userInfo.briefcase.length,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: height / 2,
                child: Column(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CachedNetworkImage(
                              imageUrl:
                              "https://blesk-vrn.ru/content/uploads/2019/02/cl2.png",
                            )),
                      ),
                      title: Text(
                        '${widget.userInfo.secondName} ${widget.userInfo.firstName}',
                        style: GoogleFonts.merriweather(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        "Welcome back",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Date of birth',
                        style: GoogleFonts.merriweather(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        DateFormat('yyyy.MM.dd')
                            .format(widget.userInfo.birthDate),
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Email',
                        style: GoogleFonts.merriweather(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        widget.userInfo.email,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Password',
                        style: GoogleFonts.merriweather(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        "*" * widget.userInfo.password.length,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Date of account creation',
                        style: GoogleFonts.merriweather(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        DateFormat('yyyy.MM.dd hh.mm')
                            .format(widget.userInfo.createdDate),
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height / 10,
              width: width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width / 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$$amountOfMoney",
                          style: GoogleFonts.robotoCondensed(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Amount of money:",
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: height / 16,
                  ),
                ],
              ),
            ),
            Text(
              "Your bank accounts",
              style: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:height*0.7,child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: cardsWidgets,)),
            GestureDetector(
                onTap: () {
                  _incrementCounter("USD");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    for (int i = 0; i < 3; ++i)
                      ColoredButton(
                          dropShadow: false,
                          colors: colors[i],
                          width: width / 5,
                          height: width / 5,
                          child: Icon(
                            Icons.add,
                            size: width / 15,
                          )),
                  ],
                )),
            Text(
              "Currency rates history",
              style: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ColoredButton(
              width: width * 0.9,
              height: height / 2,
              colors: const [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white
              ],
              dropShadow: true,
              child: const Graphic(term: 0,),
            ),
          ],
        ),
      ),
    );
  }
}