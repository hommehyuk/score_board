import 'package:flutter/widgets.dart';
import 'package:score_board_app/domain/model/model.dart';

enum PlayerType { blue, red }

enum SetScoreType { set }

class PlayerProvider extends ChangeNotifier {
  final List<PlayerData> _playerDataList =
      List.generate(PlayerType.values.length, (index) => PlayerData(0, 0));

  List<PlayerData> get playerDataList => _playerDataList;

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

  void resetData() {
    for (int i = 0; i < PlayerType.values.length; i++) {
      _playerDataList[i].score = 0;
      _playerDataList[i].set = 0;
      _playerDataList[i].textEditingController.clear();
    }
    notifyListeners();
  }
}
