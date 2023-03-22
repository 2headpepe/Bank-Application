
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled5/domain/entities/user_entity.dart';
import 'colored_button.dart';

class CardWidget extends StatelessWidget {
  final String name;
  final List<Color> colors;
  final CurrencyEntity currencyAccount;

  final VoidCallback onPressed;

  const CardWidget(
      {Key? key,
      required this.name,
      required this.colors,
      required this.currencyAccount,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: ColoredButton(
        dropShadow: true,
        colors: colors,
        height: width * 0.7 * 54 / 86,
        width: width * 0.7,
        child: Padding(
          padding: EdgeInsets.only(left: width / 16, top: width / 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.robotoCondensed(
                  color: const Color.fromRGBO(255, 220, 255, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${currencyAccount.id}',
                style: GoogleFonts.robotoCondensed(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Available balance",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "${currencyAccount.currency} ${currencyAccount.amount}",
                    style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
