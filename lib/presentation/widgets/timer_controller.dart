import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const int DEFAULT_TIME_IN_MS = 6 * 60 * 1000;

class TimerController extends ChangeNotifier {
  int _remainingTimeInMs = DEFAULT_TIME_IN_MS;

  int get remainingMinutes => (_remainingTimeInMs / 1000) ~/ 60;

  int get remainingSeconds => (_remainingTimeInMs ~/ 1000) % 60;

  void changeRemainingTime(int timeVarianceInMs) {
    _remainingTimeInMs += timeVarianceInMs;
    notifyListeners(); // Notify listeners about the change
  }
}
