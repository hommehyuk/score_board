import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/timer_controller.dart';

class ControlSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TimerProvider timerProvider = Provider.of<TimerProvider>(context);

    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Spacer(flex: 3),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  timerProvider.resetData();
                },
              ),
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: FittedBox(
              child: TextButton(
                child: Text('-'),
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
                child: Text('+'),
                onPressed: () => timerProvider.changeRemainingTime(10000),
              ),
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: IconButton(
                icon: const Icon(Icons.play_circle_outline),
                onPressed: () =>
                    timerProvider.startTimer(), // Handle timer start
              ),
            ),
          ),
          Spacer(flex: 3),
        ],
      ),
    );
  }
}
