import 'package:flutter/cupertino.dart';
import 'package:score_board_app/presentation/widgets/controller_widget.dart';

class ScoreWidget extends StatelessWidget {
  final PlayerType playerType;

  const ScoreWidget( {
    required this.playerType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
