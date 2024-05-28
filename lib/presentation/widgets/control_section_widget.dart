import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/play_or_pause_button.dart';
import 'package:score_board_app/domain/model/player_item.dart';
import 'package:score_board_app/domain/model/timer_item.dart';

class ControlSectionWidget extends StatelessWidget {
  const ControlSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TimerProvider timerProvider = Provider.of<TimerProvider>(context);
    PlayerProvider playerProvider = Provider.of<PlayerProvider>(context);

    return Container(
      color: Colors.white,
      child: Row(
        children: [
          const Spacer(flex: 3),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.refresh),
                padding: EdgeInsets.zero,
                iconSize: 35,
                onPressed: () {
                  timerProvider.resetData();
                  playerProvider.resetData();
                },
              ),
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: FittedBox(
              child: TextButton(
                child: const Text(
                  '-',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () => timerProvider.changeRemainingTime(-10000),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: FittedBox(
              child: Center(
                  child: Text(
                      '${timerProvider.remainingMinutes.toString().padLeft(2, '0')}:${timerProvider.remainingSeconds.toString().padLeft(2, '0')}')),
            ),
          ),
          Expanded(
            flex: 2,
            child: FittedBox(
              child: TextButton(
                child: const Text(
                  '+',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () => timerProvider.changeRemainingTime(10000),
              ),
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: PlayOrPauseButton(),
            ),
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
