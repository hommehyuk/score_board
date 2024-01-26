import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/timer_controller.dart';

class ControlSection extends StatelessWidget {
  const ControlSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TimerController tc = Provider.of<TimerController>(context);

    return Container(
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: Text(
              'a',
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: TextButton(
                child: const Text('-'),
                onPressed: () => tc.changeRemainingTime(-10000),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: FittedBox(
              child: Center(
                  child: Text(
                      '${tc.remainingMinutes.toString().padLeft(2, '0')}:${tc.remainingSeconds.toString().padLeft(2, '0')}')),
            ),
          ),
          Expanded(
            flex: 1,
            child: FittedBox(
              child: TextButton(
                child: const Text('+'),
                onPressed: () => tc.changeRemainingTime(10000),
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: Text(
              'a',
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
