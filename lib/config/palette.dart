import 'package:flutter/material.dart';

class Palette {
  static const Color mainGreen = Color(0xFF35a989);
  static const Color mainLightGreen = Color(0xFFd2f8d2);

  static const Color mainWhite = Color(0xFFFFFFFF);

  static const Color mainBlack = Color(0xFF000000);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
