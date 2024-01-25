import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';

class SetScore extends StatelessWidget {
  final PlayerType playerType;
  final SetScoreType setScoreType;

  const SetScore(this.playerType, this.setScoreType);

  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<ControllerProvider>(context);

    var textStyle = const TextStyle(color: Colors.white);

    String setScoreDisplay = (setScoreType == SetScoreType) ? 'Set' : 'Set';
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 5,
                child: FittedBox(
                  child: TextButton(
                    child: Text('-', style: textStyle),
                    onPressed: () => controllerProvider.changeSetScore(
                        playerType, setScoreType, -1),
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Text(
                      '${controllerProvider.getPlayerSetScore(playerType, setScoreType)}',
                      style: textStyle),
                ),
              ),
              Expanded(
                flex: 5,
                child: FittedBox(
                  child: TextButton(
                    child: Text('+', style: textStyle),
                    onPressed: () => controllerProvider.changeSetScore(
                        playerType, setScoreType, 1),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Expanded(child: FittedBox(child: Text(setScoreDisplay))),
      ],
    );
  }
}
