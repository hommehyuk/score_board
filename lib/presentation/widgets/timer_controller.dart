import 'dart:async';

import 'package:flutter/material.dart';

const int DEFAULT_TIME_IN_MS = 6 * 60 * 1000;

class TimerProvider with ChangeNotifier {
  int _remainingTimeInMs = DEFAULT_TIME_IN_MS;
  Timer? _timer;

  int get remainingMinutes => (_remainingTimeInMs / 1000) ~/ 60;

  int get remainingSeconds => (_remainingTimeInMs ~/ 1000) % 60;

  bool get isOngoing => _timer != null && _timer!.isActive;

  void changeRemainingTime(int timeVarianceInMs) {
    _remainingTimeInMs += timeVarianceInMs;
    notifyListeners();
  }

  void startTimer() {
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
    _timer?.cancel();
    _timer = null;
    notifyListeners();
  }

  void resetData() {
    _remainingTimeInMs = DEFAULT_TIME_IN_MS;
    stopTimer();
    notifyListeners();
  }
}
