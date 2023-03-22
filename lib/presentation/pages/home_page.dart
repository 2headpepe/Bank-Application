import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/data/models/user.dart';
import 'package:untitled5/domain/entities/currency_rates_entity.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'package:untitled5/presentation/widgets/blocWidgets/transactions_bloc_builder.dart';
import '../widgets/blocWidgets/token_bloc_builder.dart';
import '../../../globals.dart';
import '../../presentation/bloc/currency_bloc/currency_bloc.dart';
import '../widgets/blocWidgets/user_bloc_builder.dart';
import '../widgets/card_widget.dart';
import '../widgets/colored_button.dart';
import '../../presentation/widgets/grafic.dart';
import 'card_info_page.dart';
import 'home_page_info.dart';

///home page - main page of app for user
class HomePage extends StatefulWidget {
  final UserEntity userInfo;

  const HomePage({super.key, required this.userInfo});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _incrementCounter(String data) {
    setState(() {
      widget.userInfo.briefcase.add(
          CurrencyModel(id: 1, amount: 0.0, briefcaseId: 1, currency: data));
    });
    _controller = TextEditingController();
    flag = false;
  }

  CurrencyRatesEntity currencyRates = const CurrencyRatesEntity(
      source: "USD",
      quotes: {
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

  late TextEditingController _controller;
  bool flag = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Material(
                        child: TransactionsBlocBuilder(
                            child: ((transactions) => CardInfoPage(
                                  name:
                                      '${widget.userInfo.secondName} ${widget.userInfo.firstName}',
                                  colors: colors[i % colors.length],
                                  currencyAccount: widget.userInfo.briefcase[i],
                                  transactionsHistory: transactions,
                                ))))));
          },
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
        height: height * 1.15 + width * 0.6 * widget.userInfo.briefcase.length,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Text("here may be your info")));
                //TokenBlocBuilder(
                //       token: 'hello',
                //       child: (token) => UserBlocBuilder(
                //           token: token.toString(),
                //           child: (user) => Material(
                //               child: HomePageInfo(userInfo: user))),
                //     )));
              },
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
            Column(
              children: [
                Text(
                  "Your bank accounts",
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    height: height / 3 * widget.userInfo.briefcase.length,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: cardsWidgets,
                    )),
              ],
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    flag = true;
                  });
                  //_incrementCounter();
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
            Visibility(
                visible: flag,
                child: Column(
                  children: [
                    Text(
                      "Choose type of currency",
                      style: GoogleFonts.merriweather(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: DropdownButton(
                        items: currencyRates.quotes.keys
                            .toList()
                            .map((e) => DropdownMenuItem(
                                  value: e.substring(3),
                                  child: Text(e.substring(3)),
                                ))
                            .toList(),
                        onChanged: (value) {
                          if (value != null) _incrementCounter(value);
                        },
                        isExpanded: true,
                        elevation: 16,
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
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
              child: const Graphic(
                term: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
