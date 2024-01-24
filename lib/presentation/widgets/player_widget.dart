import 'package:flutter/material.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';

class PlayerInfo extends StatelessWidget {
  final PlayerType playerType;

  const PlayerInfo(this.playerType);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text('a'),
        ),
        Expanded(
          child: Text('b'),
        ),
        Expanded(
          child: Text('c'),
        ),
      ],
    );
  }
}
