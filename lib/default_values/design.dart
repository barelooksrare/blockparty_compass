import 'package:flutter/material.dart';

class StyleSheet {
  /// Its not Navy, but im to lazy to change it.
  /// So instead the color just get them by the depth(900,800,700).
  static const Color darkNavy900 =
      Color.fromARGB(255, 18, 11, 34); //rgb(18,11,34)

  static const Color darkNavy850 =
      Color.fromARGB(255, 49, 24, 170); //rgb(71,44,209)
  static const Color darkNavy800 =
      Color.fromARGB(255, 71, 44, 209); //rgb(71,44,209)
  static const Color darkNavy750 =
      Color.fromARGB(255, 91, 63, 233); //rgb(71,44,209)
  static const Color darkNavy700 =
      Color.fromARGB(255, 130, 105, 255); //rgb(130,105,255)
  static const Color teal700 =
      Color.fromARGB(255, 0, 208, 182); //rgb(0,208,182)
  static const Color teal800 =
      Color.fromARGB(255, 0, 150, 132); //rgb(0, 150, 132)
  static const Color teal850 =
      Color.fromARGB(255, 0, 117, 103); //rgb(0, 117, 103)
  static const Color yellow700 =
      Color.fromARGB(255, 255, 176, 72); //rgb(255, 176, 72)
  static const Color yellow800 =
      Color.fromARGB(255, 255, 154, 23); //rgb(255,154,23)
  static const Color yellow850 =
      Color.fromARGB(255, 204, 122, 14); //rgb(255,154,23)

  static Image logoImage = Image.asset(
    'assets/images/logo-minimal.png',
  );
}
