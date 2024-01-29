import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_board_app/presentation/widgets/player_controller.dart';
import 'package:score_board_app/presentation/widgets/set_score.dart';

class PlayerInfo extends StatelessWidget {
  final PlayerType playerType;

  const PlayerInfo(this.playerType);

  @override
  Widget build(BuildContext context) {
    final playerProvider = Provider.of<PlayerProvider>(context);

    double dynamicFontSizeCriterion = MediaQuery.of(context).size.height;
    var textStyle = TextStyle(color: Colors.white);
    Color bgColor = Colors.green;

    if (playerType == PlayerType.red) {
      bgColor = Colors.red;
    }

    return Container(
      color: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Expanded(
            flex: 1,
            child: TextField(
              controller:
                  playerProvider.getPlayerTextEditingController(playerType),
              style: textStyle
                  .merge(TextStyle(fontSize: dynamicFontSizeCriterion * 0.05)),
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(hintText: 'Player Name'),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '${playerProvider.getPlayerScore(playerType)}',
              style: textStyle
                  .merge(TextStyle(fontSize: dynamicFontSizeCriterion * 0.1)),
            ),
          ),
          Expanded(flex: 2, child: SetScore(playerType, SetScoreType.set)),
          Spacer(),
        ],
      ),
    );
  }
}
