import 'package:flutter/material.dart';
import '../models/game.dart';

class GameController extends ChangeNotifier {
  int gameIndex = 0;

  List<Game> list = [
    Game('Defender', 'A space Shooter by Williams'),
    Game('E.T the Extra-terrestrial', 'best game'),
    Game('game3', 'game3'),
  ];

  void changeIndex(int newIndex) {
    gameIndex = newIndex;
    notifyListeners();
  }
}
