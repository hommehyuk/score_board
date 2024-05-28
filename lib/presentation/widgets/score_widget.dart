import 'package:flutter/material.dart';
import 'package:score_board_app/domain/model/player_item.dart';
import 'package:score_board_app/presentation/widgets/score_unit_widget.dart';

class ScoreWidget extends StatelessWidget {
  final PlayerType playerType;

  const ScoreWidget(this.playerType);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ScoreUnitWidget(this.playerType, 3, Colors.black54),
          ),
          Expanded(
            child: ScoreUnitWidget(this.playerType, 2, Colors.black45),
          ),
          Expanded(
            child: ScoreUnitWidget(this.playerType, 1, Colors.black38),
          ),
        ],
      ),
    );
  }
}
