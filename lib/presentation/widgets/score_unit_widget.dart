import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/domain/model/player_item.dart';

class ScoreUnitWidget extends StatelessWidget {
  final PlayerType playerType;
  final int varianceUnit;
  final Color backgroundColor;

  const ScoreUnitWidget(
    this.playerType,
    this.varianceUnit,
    this.backgroundColor,
  );

  @override
  Widget build(BuildContext context) {
    PlayerProvider c = Provider.of<PlayerProvider>(context);

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
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () =>
                        c.changePlayerScore(playerType, varianceUnit),
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(child: Text('${varianceUnit}')),
              ),
              Expanded(
                child: FittedBox(
                  child: TextButton(
                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      if (c.getPlayerScore(playerType) >= varianceUnit) {
                        c.changePlayerScore(playerType, -varianceUnit);
                      }
                    },
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
