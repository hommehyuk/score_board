import 'dart:async';

import 'package:flutter/material.dart';

const int DEFAULT_TIME_IN_MS = 15 * 60 * 1000;

class TimerProvider with ChangeNotifier {
  int _remainingTimeInMs = DEFAULT_TIME_IN_MS;
  bool _isOngoing = false;
  Timer? _timer;

  int get remainingMinutes => (_remainingTimeInMs / 1000) ~/ 60;

  int get remainingSeconds => (_remainingTimeInMs ~/ 1000) % 60;

  bool get isOngoing => _isOngoing;

  void changeRemainingTime(int timeVarianceInMs) {
    _remainingTimeInMs += timeVarianceInMs;
    notifyListeners();
  }

  void startTimer() {
    _isOngoing = true;
    _timer?.cancel();
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      _remainingTimeInMs -= 100;
      notifyListeners();

      if (_remainingTimeInMs <= 0) {
        stopTimer();
        // Handle timer completion logic here
      }
    });
  }

  void stopTimer() {
    _isOngoing = false;
    _timer?.cancel();
    notifyListeners();
  }

  void resetData() {
    _isOngoing = false;
    _remainingTimeInMs = DEFAULT_TIME_IN_MS;
    stopTimer();
    notifyListeners();
  }
}
