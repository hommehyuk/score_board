import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';

class ScoreUnitWidget extends StatelessWidget {
  final PlayerType playerType;
  final int varianceUnit;
  final Color backgroundColor;

  const ScoreUnitWidget(
      this.playerType, this.varianceUnit, this.backgroundColor,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<ControllerProvider>(context);

    var textStyle = const TextStyle(color: Colors.white);

    return Container(
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: FittedBox(
                  child: TextButton(
                    child: Text('+', style: textStyle),
                    onPressed: () => controllerProvider.changePlayerScore(
                        playerType, varianceUnit),
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: Text(
                      '${controllerProvider.getPlayerScore(playerType)}',
                      style: textStyle),
                ),
              ),
              Expanded(
                child: FittedBox(
                  child: TextButton(
                    child: Text('-', style: textStyle),
                    onPressed: () => controllerProvider.changePlayerScore(
                        playerType, -1 * varianceUnit),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
