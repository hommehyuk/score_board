import 'package:flutter/widgets.dart';
import 'package:score_board_app/domain/model/model.dart';

enum PlayerType { blue, red }

enum SetScoreType { set }

class PlayerController extends ChangeNotifier {
  final List<PlayerData> _playerDataList =
      List.generate(PlayerType.values.length, (index) => PlayerData(0, 0));

  void changePlayerScore(PlayerType playerType, int scoreVariance) {
    _playerDataList[playerType.index].score += scoreVariance;
    notifyListeners();
  }

  int getPlayerScore(PlayerType playerType) {
    return _playerDataList[playerType.index].score;
  }

  void changeSetScore(
      PlayerType playerType, SetScoreType setScore, int pointVariance) {
    if (setScore == SetScoreType.set) {
      _playerDataList[playerType.index].set += pointVariance;
    } else {
      _playerDataList[playerType.index].set += pointVariance;
    }
    notifyListeners();
  }

  int getPlayerSetScore(PlayerType playerType, SetScoreType setScore) {
    if (setScore == SetScoreType.set) {
      return _playerDataList[playerType.index].set;
    }
    return _playerDataList[playerType.index].set;
  }

  TextEditingController getPlayerTextEditingController(PlayerType playerType) {
    return _playerDataList[playerType.index].textEditingController;
  }
}
