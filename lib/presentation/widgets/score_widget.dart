import 'package:flutter/material.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';
import 'package:score_board_app/presentation/widgets/score_unit_widget.dart';

class ScoreWidget extends StatelessWidget {
  final PlayerType playerType;

  const ScoreWidget({
    required this.playerType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ScoreUnitWidget(playerType, 3, Colors.black54),
          ),
          Expanded(
            child: ScoreUnitWidget(playerType, 2, Colors.black45),
          ),
          Expanded(
            child: ScoreUnitWidget(playerType, 1, Colors.black38),
          ),
        ],
      ),
    );
  }
}
