import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/domain/model/timer_item.dart';

class PlayOrPauseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TimerProvider timerProvider = Provider.of<TimerProvider>(context);

    return IconButton(
      icon: timerProvider.isOngoing
          ? const Icon(Icons.pause_circle_outline)
          : const Icon(Icons.play_circle_outline),
      padding: EdgeInsets.zero,
      iconSize: 35,
      onPressed: () {
        timerProvider.isOngoing
            ? timerProvider.stopTimer()
            : timerProvider.startTimer();
      },
    );
  }
}
