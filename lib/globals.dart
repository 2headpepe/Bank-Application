import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

List colors = [
  [
    const Color.fromRGBO(178, 102, 255, 1),
    const Color.fromRGBO(150, 80, 255, 1),
    const Color.fromRGBO(100, 40, 200, 1),
    const Color.fromRGBO(70, 0, 150, 1),
  ],
  [
    const Color.fromRGBO(204, 229, 255, 1),
    const Color.fromRGBO(153, 200, 255, 1),
    const Color.fromRGBO(102, 178, 255, 1),
    const Color.fromRGBO(50, 102, 255, 1),
  ],
  [
    const Color.fromRGBO(255, 200, 230, 1),
    const Color.fromRGBO(241, 156, 220, 1),
    const Color.fromRGBO(220, 140, 200, 1),
    const Color.fromRGBO(255, 70, 150, 1),
  ],
  [
    const Color.fromARGB(255, 20, 29, 29),
    const Color.fromARGB(255, 12, 45, 62),
    const Color.fromARGB(255, 9, 22, 44),
    const Color.fromARGB(255, 10, 10, 60),
  ],
];

late SharedPreferences spToken;
const CACHED_TOKEN = 'CACHED_TOKEN';
