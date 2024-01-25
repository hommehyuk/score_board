import 'package:flutter/material.dart';
import 'package:score_board_app/domain/model/model.dart';

enum PlayerType { blue, red }

enum SetScoreType { set }

const double DEFAULT_TIME = 15 * 60 * 1000;

class ControllerProvider extends ChangeNotifier {
  final List<PlayerData> _playerDataList =
      List.generate(PlayerType.values.length, (index) => PlayerData(0, 0));

  List<PlayerData> get playerDataList => _playerDataList;

  final double _remainingTimeInMs = DEFAULT_TIME;

  double get remainingTimeInMs => _remainingTimeInMs;

  void changePlayerScore(PlayerType playerType, int scoreVariance) {
    _playerDataList[playerType.index].score += scoreVariance;
    notifyListeners();
  }

  int getPlayerScore(PlayerType playerType) {
    return _playerDataList[playerType.index].score;
  }

  void changeSetScore(
      PlayerType playerType, SetScoreType setScoreType, int pointVariance) {
    if (setScoreType == SetScoreType.set) {
      _playerDataList[playerType.index].set += pointVariance;
    } else {
      _playerDataList[playerType.index].set += pointVariance;
    }

    notifyListeners();
  }

  int getPlayerSetScore(PlayerType playerType, SetScoreType setScoreType) {
    if (setScoreType == SetScoreType.set) {
      return _playerDataList[playerType.index].set;
    }

    return _playerDataList[playerType.index].set;
  }
}
