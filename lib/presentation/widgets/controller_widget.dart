import 'package:flutter/material.dart';

enum PlayerType { blue, red }

const double DEFAULT_TIME = 15 * 60 * 1000;

class ControllerProvider extends ChangeNotifier {
  final List<int> _scoreList = List.filled(PlayerType.values.length, 0);
  double remainingTimeInMs = DEFAULT_TIME;

  void changePlayerScore(PlayerType player, int scoreVariance) {
    _scoreList[player.index] += scoreVariance;
    notifyListeners(); // Notify listeners of changes
  }

  int getPlayerScore(PlayerType playerType) {
    return _scoreList[playerType.index];
  }
}
