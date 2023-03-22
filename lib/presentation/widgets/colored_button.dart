import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  ColoredButton(
      {Key? key,
        required this.width,
        required this.height,
        required this.child,
        required this.dropShadow,
        required this.colors})
      : super(key: key);

  late final List<Color> colors;
  late final bool dropShadow;
  late final double height;
  late final double width;
  late final Widget child;


  @override
  Widget build(BuildContext context) {
    if (dropShadow) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colors,
                stops: const [0.1, 0.3, 0.8, 1])),
        child: child,
      );
    } else {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colors,
                stops: const [0.1, 0.3, 0.8, 1])),
        child: child,
      );
    }
  }
}
