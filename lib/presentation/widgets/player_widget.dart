import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/player_controller.dart';
import 'package:score_board_app/presentation/widgets/set_score.dart';

class PlayerWidget extends StatelessWidget {
  final PlayerType playerType;

  const PlayerWidget(this.playerType);

  @override
  Widget build(BuildContext context) {
    final playerController = Provider.of<PlayerController>(context);

    double dynamicFontSizeCriterion = MediaQuery.of(context).size.height;
    var textStyle = const TextStyle(color: Colors.white);
    Color bgColor = Colors.blue;

    if (playerType == PlayerType.red) {
      bgColor = Colors.red;
    }

    return Container(
      color: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Expanded(
            flex: 1,
            child: TextField(
              controller:
                  playerController.getPlayerTextEditingController(playerType),
              style: textStyle
                  .merge(TextStyle(fontSize: dynamicFontSizeCriterion * 0.035)),
              textAlign: TextAlign.center,
              decoration:
                  const InputDecoration.collapsed(hintText: 'Player Name'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '${playerController.getPlayerScore(playerType)}',
              style: textStyle
                  .merge(TextStyle(fontSize: dynamicFontSizeCriterion * 0.1)),
            ),
          ),
          Expanded(flex: 2, child: SetScore(playerType, SetScoreType.set)),
          const Spacer(),
        ],
      ),
    );
  }
}
